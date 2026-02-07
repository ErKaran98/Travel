import 'package:get/get.dart';

class HomeController extends GetxController {

  var selectedCategory = 0.obs;

  void changeCategory(int index) {
    selectedCategory.value = index;
  }
}