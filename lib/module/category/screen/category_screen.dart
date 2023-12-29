import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/module/home/screen/base_screen.dart';
import 'package:iconsax/iconsax.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  List<String> listTitle = [
    'املاک',
    'وسیله نقلیه',
    'کالای دیجیتال',
    'خانه و آشپزخانه',
    'وسایل شخصی',
  ];

  List<IconData> listIcon = [
    Iconsax.building,
    Iconsax.car,
    Iconsax.monitor,
    Iconsax.lamp,
    Iconsax.clock,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainAppBar(title: 'دسته بندی‌ها'),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(20),
            itemCount: listTitle.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
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
              );
            },
          ),
        ),
      ],
    );
  }
}
