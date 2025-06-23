import 'package:binadim_store/features/shop/screens/home/home.dart';
import 'package:binadim_store/utils/constants/colors.dart';
import 'package:binadim_store/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = BAHelperFunction.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          selectedIndex: controller.currentIndex.value,
          elevation: 0,
          backgroundColor: dark ? BAColors.black : BAColors.white,
          indicatorColor: dark
              ? BAColors.white.withValues(alpha: 0.15)
              : BAColors.black.withValues(alpha: 0.15),
          onDestinationSelected: (index) => {
            controller.currentIndex.value = index,
          },

          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Shop'),
            NavigationDestination(
              icon: Icon(Iconsax.heart),
              label: 'Whishlist',
            ),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.pages[controller.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> currentIndex = 0.obs;

  final pages = [
    const HomeScreen(),
    const Center(child: Text('Shop')),
    const Center(child: Text('Whishlist')),
    const Center(child: Text('Profile')),
  ];
}
