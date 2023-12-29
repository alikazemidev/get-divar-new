import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  final bool? centerTitle;
  const AppbarWidget({
    super.key,
    required this.title,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Stack(
        children: [
          Align(
            alignment: centerTitle! ? Alignment.center : Alignment.centerRight,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: MyColors.kDarkTextColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Icon(
                  Iconsax.arrow_left,
                  color: MyColors.kPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
