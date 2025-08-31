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

    return Obx(() {
      if (controller.isLoading.value && controller.products.isEmpty) {
        return const Center(child: CircularProgressIndicator());
      }

      return Column(
        children: [
          // Dropdown
          DropdownButtonFormField(
            decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
            items: [
              "Name",
              "High to Low",
              "Low to High",
              "Newest",
              "Sale",
              "Top Rated",
            ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
            onChanged: (value) {},
          ),
          const SizedBox(height: BASizes.spaceBtwSections),
          // Products
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
              child: controller.isLoading.value
                  ? const CircularProgressIndicator()
                  : const Text("Load More"),
            ),
        ],
      );
    });
  }
}
