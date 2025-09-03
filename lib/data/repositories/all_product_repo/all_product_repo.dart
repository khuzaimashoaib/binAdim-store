import 'dart:convert';
import 'package:binadim_store/features/shop/models/all_products/all_products_model.dart';
import 'package:binadim_store/utils/constants/api_constants.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  // Fetch all products
  Future<List<ProductModel>> fetchProducts({
    int page = 1,
    int perPage = 10,
    String? orderBy,
    String? order,
    bool? featured,
    bool? onSale,
  }) async {
    final url = BAApiConstants.getProducts(
      page,
      perPage,
      orderBy,
      order,
      featured,
      onSale,
    );

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      print("📡 API Response (Products): ${response.body}");

      final List data = jsonDecode(response.body);
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load products: ${response.body}");
    }
  }

  // Fetch single product by ID
  Future<ProductModel> fetchSingleProduct(int id) async {
    final url = BAApiConstants.singleProduct(id);

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return ProductModel.fromJson(data);
    } else {
      throw Exception("Failed to load product: ${response.body}");
    }
  }
}
