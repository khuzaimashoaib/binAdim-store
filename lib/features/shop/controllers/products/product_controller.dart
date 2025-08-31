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

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  /// Fetch products (initial load or refresh)
  Future<void> fetchProducts({bool refresh = false}) async {
    try {
      if (refresh) {
        currentPage = 1;
        products.clear();
        hasMore.value = true;
      }

      if (!hasMore.value || isLoading.value) return;

      isLoading.value = true;

      final newProducts = await _repo.fetchProducts(
        page: currentPage,
        perPage: perPage,
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
