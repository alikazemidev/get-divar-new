// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/module/home/screen/base_screen.dart';
import 'package:get_divar/module/profile/edit_profile_screen.dart';
import 'package:get_divar/module/profile/screen/bookmark_screen.dart';
import 'package:get_divar/module/profile/screen/logout_screen.dart';
import 'package:get_divar/module/profile/screen/my_ads_screen.dart';
import 'package:iconsax/iconsax.dart';

class ProfileSCreen extends StatelessWidget {
  ProfileSCreen({super.key});

  List<String> listTitle = [
    'ویرایش پروفایل',
    'آگهی های من',
    'نشان ها',
    'خروج از حساب',
  ];

  List<IconData> listIcon = [
    Iconsax.user_edit,
    Iconsax.task_square,
    Iconsax.save_2,
    Iconsax.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainAppBar(title: 'پروفایل'),
        SizedBox(height: 30),
        Expanded(
          child: Column(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: MyColors.kScaffoldBgColor,
                  // boxShadow: [
                  //   BoxShadow(
                  //       color: Colors.black.withOpacity(.1),
                  //       blurRadius: 10,
                  //       offset: Offset(0, 3)),
                  // ],
                ),
                child: ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  borderRadius: BorderRadius.circular(25),
                  child: Image.network(
                    'https://img5.downloadha.com/hosein/files/2023/10/CRYMACHINA-cover.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'علی کاظمی',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  itemCount: listTitle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Get.to(EditProfileScreen());
                        } else if (index == 1) {
                          Get.to(MyAdsScreen());
                        } else if (index == 2) {
                          Get.to(BookmarkScreen());
                        } else if (index == 3) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: LogoutDialog(),
                              );
                            },
                          );
                        }
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: MyColors.kWhiteColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ListTile(
                          leading: Icon(
                            listIcon[index],
                            color: MyColors.kPrimaryColor,
                            size: 24,
                          ),
                          title: Text(
                            listTitle[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          trailing: Icon(
                            CupertinoIcons.chevron_left,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
