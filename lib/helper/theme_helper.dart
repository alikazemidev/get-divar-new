import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';

class ThemeHelper extends GetxController {
  ThemeData defultTheme = ThemeData(
    fontFamily: "samim",
    scaffoldBackgroundColor: MyColors.kScaffoldBgColor,
    primaryColor: MyColors.kPrimaryColor,
    dividerColor: MyColors.kBorderColor,
    hintColor: MyColors.kHintTextColor,
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: MyColors.kDarkTextColor,
      ),
    ),
  );
}
