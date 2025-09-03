import 'package:binadim_store/data/repositories/all_product_repo/all_product_repo.dart';
import 'package:binadim_store/features/shop/models/all_products/all_products_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final ProductRepository _repo = ProductRepository();

  /// Observable states
  var products = <ProductModel>[].obs;
  var isLoading = false.obs;
  var hasMore = true.obs;

  /// Pagination variables
  var currentPage = 1;
  final int perPage = 10;

  /// Sorting & filter state
  String? currentOrderBy;
  String? currentOrder;
  bool? currentFeatured;
  bool? currentOnSale;
  var selectedSort = "Latest".obs; // default value

  @override
  void onInit() {
    super.onInit();
    sortProducts("Latest");
  }

  /// Fetch products (initial load or refresh)
  Future<void> fetchProducts({
    bool refresh = false,
    String? orderBy,
    String? order,
    bool? featured,
    bool? onSale,
  }) async {
    try {
      if (refresh) {
        currentPage = 1;
        products.clear();
        hasMore.value = true;

        // update current filters

        currentOrderBy = orderBy;
        currentOrder = order;
        currentFeatured = featured;
        currentOnSale = onSale;
        isLoading.value = true;
      }

      if (!hasMore.value) return;
      isLoading.value = true;

      final newProducts = await _repo.fetchProducts(
        page: currentPage,
        perPage: perPage,
        orderBy: currentOrderBy,
        order: currentOrder,
        featured: currentFeatured,
        onSale: currentOnSale,
      );

      if (newProducts.isEmpty) {
        hasMore.value = false;
      } else {
        if (refresh) {
          products.assignAll(newProducts);
        } else {
          products.addAll(newProducts);
        }

        /// Check if more pages are available
        if (newProducts.length < perPage) {
          hasMore.value = false;
        } else {
          currentPage++;
        }
      }
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading.value = false;
    }
  }

  final Map<String, Map<String, dynamic>> sortOptions = {
    "Latest": {"orderBy": "date", "order": "desc"},
    "Sale": {"onSale": true},
    "Featured": {"featured": true},
    "Price: Low to High": {"orderBy": "price", "order": "asc"},
    "Price: High to Low": {"orderBy": "price", "order": "desc"},
  };

  void sortProducts(String option) {
    final params = sortOptions[option];
    if (params != null) {
      fetchProducts(
        refresh: true,
        orderBy: params["orderBy"],
        order: params["order"],
        onSale: params["onSale"] ?? false,
        featured: params["featured"] ?? false,
      );
    }
  }

  void changeSort(String value) {
    selectedSort.value = value;
    sortProducts(value); // yahan tum apna sorting call karoge
  }

  /// Fetch single product by ID
  Future<ProductModel?> fetchSingleProduct(int id) async {
    try {
      return await _repo.fetchSingleProduct(id);
    } catch (e) {
      Get.snackbar("Error", e.toString());
      return null;
    }
  }
}
