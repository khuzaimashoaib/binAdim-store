import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
  json.decode(str).map((x) => ProductModel.fromJson(x)),
);

class ProductModel {
  final int id;
  final String name;
  final String slug;
  final String permalink;
  final String description;
  final String shortDescription;
  final String sku;
  final String price;
  final String regularPrice;
  final String salePrice;
  final bool onSale;
  final bool purchasable;
  final String stockStatus;
  final int totalSales;
  final List<ProductCategory> categories;
  final List<ProductImage> images;
  final List<ProductAttribute> attributes;

  ProductModel({
    required this.id,
    required this.name,
    required this.slug,
    required this.permalink,
    required this.description,
    required this.shortDescription,
    required this.sku,
    required this.price,
    required this.regularPrice,
    required this.salePrice,
    required this.onSale,
    required this.purchasable,
    required this.stockStatus,
    required this.totalSales,
    required this.categories,
    required this.images,
    required this.attributes,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"] ?? 0,
    name: json["name"] ?? "",
    slug: json["slug"] ?? "",
    permalink: json["permalink"] ?? "",
    description: json["description"] ?? "",
    shortDescription: json["short_description"] ?? "",
    sku: json["sku"] ?? "",
    price: json["price"] ?? "0",
    regularPrice: json["regular_price"] ?? "0",
    salePrice: json["sale_price"] ?? "0",
    onSale: json["on_sale"] ?? false,
    purchasable: json["purchasable"] ?? false,
    stockStatus: json["stock_status"] ?? "outofstock",
    totalSales: json["total_sales"] ?? 0,
    categories:
        (json["categories"] as List?)
            ?.map((x) => ProductCategory.fromJson(x))
            .toList() ??
        [],
    images:
        (json["images"] as List?)
            ?.map((x) => ProductImage.fromJson(x))
            .toList() ??
        [],
    attributes:
        (json["attributes"] as List?)
            ?.map((x) => ProductAttribute.fromJson(x))
            .toList() ??
        [],
  );
  String get brand {
    try {
      final brandAttr = attributes.firstWhere(
        (attr) => attr.name.toLowerCase() == "brand" && attr.options.isNotEmpty,
        orElse: () => ProductAttribute(id: 0, name: '', slug: '', options: []),
      );
      return brandAttr.options.isNotEmpty ? brandAttr.options[0] : "No Brand";
    } catch (_) {
      return "No Brand";
    }
  }
}

class ProductCategory {
  final int id;
  final String name;
  final String slug;

  ProductCategory({required this.id, required this.name, required this.slug});

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      ProductCategory(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        slug: json["slug"] ?? "",
      );
}

class ProductImage {
  final int id;
  final String src;
  final String name;

  ProductImage({required this.id, required this.src, required this.name});

  factory ProductImage.fromJson(Map<String, dynamic> json) => ProductImage(
    id: json["id"] ?? 0,
    src: json["src"] ?? "",
    name: json["name"] ?? "",
  );
}

class ProductAttribute {
  final int id;
  final String name;
  final String slug;
  final List<String> options;

  ProductAttribute({
    required this.id,
    required this.name,
    required this.slug,
    required this.options,
  });

  factory ProductAttribute.fromJson(Map<String, dynamic> json) =>
      ProductAttribute(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        slug: json["slug"] ?? "",
        options:
            (json["options"] as List?)?.map((x) => x.toString()).toList() ?? [],
      );
}
