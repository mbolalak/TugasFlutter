import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihanfluter/menu/history.dart';
import 'package:latihanfluter/menu/home.dart';
import 'package:latihanfluter/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];
}