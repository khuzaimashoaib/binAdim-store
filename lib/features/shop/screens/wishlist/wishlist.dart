import 'package:binadim_store/common/widgets/appbar/appbar.dart';
import 'package:binadim_store/common/widgets/icons/circular_icon.dart';
import 'package:binadim_store/common/widgets/layouts/grid_layout.dart';
import 'package:binadim_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:binadim_store/features/shop/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/sizes.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BAAppBar(
        title: Text(
          "Wishlist",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          BACircularIcon(
            icon: Iconsax.add,
            onTap: () => Get.to(const HomeScreen()),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(BASizes.defaultSpace),
          child: Column(
            children: [
              // BAGridLayout(
              //   itemCount: 4,
              //   itemBuilder: (_, index) => BAProductCardVertical(),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
