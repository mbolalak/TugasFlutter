import 'package:get/get.dart';

class MenuDrawerController extends GetxController {
  //  (0: Home, 1: History, 2: Profile)
  var selectedIndex = 0.obs;

  
  void changePage(int index) {
    selectedIndex.value = index;
    Get.back(); 
  }
}