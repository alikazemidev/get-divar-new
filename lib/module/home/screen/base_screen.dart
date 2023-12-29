// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/module/ad/screen/create_ad_screen.dart';
import 'package:get_divar/module/ad/screen/details_ad_screen.dart';

import 'package:get_divar/module/category/screen/category_screen.dart';
import 'package:get_divar/module/home/controller/base_screen_controller.dart';
import 'package:get_divar/module/home/screen/home_screen.dart';
import 'package:get_divar/module/home/widget/dialog_widget.dart';
import 'package:get_divar/module/profile/screen/profile_screen.dart';
import 'package:get_divar/module/search/screens/search_screen.dart';
import 'package:iconsax/iconsax.dart';

class BaseScreen extends StatefulWidget {
  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseScreenController>(
        init: BaseScreenController(),
        builder: (controller) {
          return Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.16),
                      offset: Offset(0, -3),
                      blurRadius: 6),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed,
                  unselectedFontSize: 14,
                  showUnselectedLabels: true,
                  showSelectedLabels: true,
                  selectedLabelStyle: TextStyle(
                    fontSize: 14,
                    color: MyColors.kPrimaryColor,
                  ),
                  selectedItemColor: MyColors.kPrimaryColor,
                  unselectedIconTheme: IconThemeData(
                    color: MyColors.kHintTextColor,
                    size: 24,
                  ),
                  unselectedLabelStyle: TextStyle(
                    color: MyColors.kHintTextColor,
                  ),
                  currentIndex: controller.currentIndex,
                  onTap: (value) {
                    controller.changePage(value);
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Iconsax.home,
                      ),
                      label: 'خانه',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Iconsax.category,
                      ),
                      label: 'دسته بندی',
                    ),
                    BottomNavigationBarItem(
                      label: '',
                      icon: Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: MyColors.kPrimaryColor,
                        ),
                        child: Icon(
                          Iconsax.add_square,
                          color: MyColors.kWhiteColor,
                        ),
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Iconsax.search_normal,
                      ),
                      label: 'جستجو',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Iconsax.user,
                      ),
                      label: 'پروفایل',
                    ),
                  ],
                ),
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: controller.pageController,
                      onPageChanged: (value) {
                        setState(() {
                          controller.currentIndex = value;
                        });
                      },
                      children: [
                        HomeScreen(),
                        CategoryScreen(),
                        CreateAdScreen(),
                        SearchSCreen(),
                        ProfileSCreen(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

class AdCardItem extends StatelessWidget {
  final IconData? icon;
  const AdCardItem({
    super.key,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => DetailsAdScreen());
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: MyColors.kWhiteColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: MyColors.kBlackColor.withOpacity(.10),
              offset: Offset(0, 3),
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                'https://img5.downloadha.com/hosein/files/2023/10/CRYMACHINA-cover.jpg',
                height: 95,
                width: 95,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'وانت فوتون تونلند دو دیفرانسیل',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColors.kDarkTextColor,
                          ),
                        ),
                        Spacer(),
                        Visibility(
                          visible: icon != null,
                          child: Icon(
                            icon,
                            size: 23,
                            color: MyColors.kPrimaryColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Text(
                          '900,000,000',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: MyColors.kDarkTextColor,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'تومان',
                          style: TextStyle(
                            fontSize: 12,
                            color: MyColors.kHintTextColor,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'لحظاتی پیش',
                        style: TextStyle(
                          fontSize: 12,
                          color: MyColors.kHintTextColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainAppBar extends StatefulWidget {
  final String title;
  MainAppBar({
    super.key,
    required this.title,
  });

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  bool isExpanded = false;
  String selectedItem = '';
  List<String> items = ['Item 1', 'Item 2', 'Item 3'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: MyColors.kWhiteColor,
        boxShadow: [
          BoxShadow(
            color: MyColors.kBlackColor.withOpacity(.07),
            offset: Offset(0, 3),
            blurRadius: 15,
          ),
        ],
      ),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // popup button
          Padding(
            padding: const EdgeInsets.only(right: 18, top: 8, bottom: 8),
            child: PopupMenuButton(
              elevation: 2,
              padding: EdgeInsets.symmetric(horizontal: 25),
              position: PopupMenuPosition.under,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Text(
                            'جدیدترین',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            color: MyColors.kLightBottomBorder,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Text(
                            'قدیمی ترین',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            color: MyColors.kLightBottomBorder,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Text(
                            'گران ترین',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            color: MyColors.kLightBottomBorder,
                            height: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                        child: Text(
                          'ارزان ترین',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ];
              },
              child: Column(
                children: [
                  Icon(
                    Iconsax.sort,
                    color: MyColors.kPrimaryColor,
                    size: 24,
                  ),
                  Text(
                    'جدیدترین',
                    style:
                        TextStyle(color: MyColors.kPrimaryColor, fontSize: 12),
                    softWrap: false,
                  )
                ],
              ),
            ),
          ),
          Spacer(),
          // title
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 18,
              color: MyColors.kDarkTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          //  dailog button
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                useSafeArea: true,
                builder: (context) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: DialogWidget(provinces: []),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 28, top: 8, bottom: 8),
              child: Column(
                children: [
                  Icon(
                    Iconsax.location,
                    color: MyColors.kPrimaryColor,
                    size: 24,
                  ),
                  Text(
                    'تهران',
                    style:
                        TextStyle(color: MyColors.kPrimaryColor, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
