import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseScreenController extends GetxController {
    List<String> appBarTitle = [
    'آگهی‌های جدید',
    'دسته بندی‌ها',
    'جستجو',
    'پروفایل'
  ];
  int currentIndex = 0;
  PageController pageController = PageController();


  void changePage(int page) {
    pageController.animateToPage(page,
        duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    currentIndex = page;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
