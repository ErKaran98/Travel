import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedCategory = 0.obs;
  RxInt selectedHotTab = 0.obs;

  void changeCategory(int index) {
    selectedCategory.value = index;
  }

  void changeHotTab(int index) {
    selectedHotTab.value = index;
  }
}
