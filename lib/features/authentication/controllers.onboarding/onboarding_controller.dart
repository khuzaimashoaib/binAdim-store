import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Updates current page indicator when page scrolls
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jumps to the specific dot-selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  /// Updates current index and jumps to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      // Get.to(page)
    } else {
      int nextPage = currentPageIndex.value + 1;
      pageController.jumpToPage(nextPage);
    }
  }

  /// Updates current index and jumps to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
