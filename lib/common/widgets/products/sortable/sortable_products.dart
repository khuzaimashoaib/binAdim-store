import 'package:binadim_store/common/widgets/layouts/grid_layout.dart';
import 'package:binadim_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:binadim_store/features/shop/controllers/products/product_controller.dart';
import 'package:binadim_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BASortableProducts extends StatelessWidget {
  const BASortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return Column(
      children: [
        Obx(
          () => DropdownButtonFormField(
            initialValue: controller.selectedSort.value,
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              "Latest",
              "Sale",
              "Featured",
              "Price: Low to High",
              "Price: High to Low",
            ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (value) {
              if (value != null) controller.changeSort(value);
            },
          ),
        ),
        const SizedBox(height: BASizes.spaceBtwSections),

        Obx(() {
          if (controller.isLoading.value && controller.products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.products.isEmpty) {
            return const Center(child: Text("No Products found"));
          }

          // Products
          return Column(
            children: [
              BAGridLayout(
                itemCount: controller.products.length,
                itemBuilder: (_, index) {
                  final product = controller.products[index];
                  return BAProductCardVertical(
                    imageUrl: (product.images.isNotEmpty)
                        ? product.images.first.src
                        : '',

                    productName: product.name,
                    brandName: product.brand, // agar null aaye toh default
                    price: product.price.toString(),
                    // discount: product.onSale.toString(), // agar discount field hai
                    isFavorite: false, // baad me wishlist se control kar lena
                  );
                },
              ),
              const SizedBox(height: BASizes.spaceBtwSections),

              if (controller.hasMore.value)
                TextButton(
                  onPressed: () => controller.fetchProducts(),
                  child:
                      controller.isLoading.value &&
                          controller.products.isNotEmpty
                      ? const CircularProgressIndicator()
                      : const Text("Load More"),
                ),
            ],
          );
        }),
      ],
    );
  }
}
