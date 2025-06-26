import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;
}
