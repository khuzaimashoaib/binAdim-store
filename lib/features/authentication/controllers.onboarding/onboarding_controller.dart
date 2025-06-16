import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables

  /// Updates current page indicator when page scrolls
  void updatePageIndicator(int index) {}

  /// Jumps to the specific dot-selected page
  void dotNavigationClick(int index) {}

  /// Updates current index and jumps to next page
  void nextPage() {}

  /// Updates current index and jumps to the last page
  void skipPage() {}
}
