import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/helper/widget/appbar_widget.dart';
import 'package:get_divar/helper/widget/button_widget.dart';
import 'package:get_divar/helper/widget/error_snack.dart';
import 'package:get_divar/module/auth/controller/register_controller.dart';
import 'package:get_divar/module/auth/screens/login_screen.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';

import 'package:get_divar/module/home/widget/province_dialog.dart';
import 'package:iconsax/iconsax.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
        init: RegisterController(),
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    AppbarWidget(title: 'ثبت نام'),
                    SizedBox(height: 26),
                    TextFieldWidget(
                      controller: controller.userName,
                      hintText: 'نام و نام‌خانودگی',
                      icon: Iconsax.user,
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                      controller: controller.mobile,
                      hintText: 'شماره موبایل',
                      icon: Iconsax.mobile,
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                useSafeArea: true,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: controller.provinceResponse == null
                                        ? Center(
                                            child: CircularProgressIndicator())
                                        : ProvinceDialog(
                                            provinceList: controller
                                                .provinceResponse!
                                                .provinceData!,
                                          ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: MyColors.kWhiteColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: MyColors.kBorderColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  children: [
                                    Text(
                                    controller.selectProvince == null ?  'استان' : controller.selectProvince.toString(),
                                      style: TextStyle(
                                        color: MyColors.kHintTextColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      CupertinoIcons.chevron_down,
                                      color: MyColors.kHintTextColor,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => errorSnack(
                                message: 'اول استان را انتخاب کنید',
                                title: 'خطا'),
                            child: Container(
                              height: 45,
                              decoration: BoxDecoration(
                                color: MyColors.kWhiteColor,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: MyColors.kBorderColor,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      controller.selectCity == null
                                          ? 'شهر'
                                          : controller.selectCity.toString(),
                                      style: TextStyle(
                                        color: MyColors.kHintTextColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      CupertinoIcons.chevron_down,
                                      color: MyColors.kHintTextColor,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                      controller: controller.address,
                      hintText: 'آدرس',
                      maxLines: 5,
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                      controller: controller.password,
                      textInputType: TextInputType.visiblePassword,
                      hintText: 'رمز عبور',
                    ),
                    SizedBox(height: 10),
                    TextFieldWidget(
                      controller: controller.reapetPassword,
                      textInputType: TextInputType.visiblePassword,
                      hintText: 'تکرار رمز عبور',
                    ),
                    SizedBox(height: 20),
                    ButtonWidget(
                      title: 'ثبت نام',
                      onPressed: controller.register,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => Get.to(() => LoginScreen()),
                          child: Text(
                            'وارد شوید',
                            style: TextStyle(
                              color: MyColors.kPrimaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'حساب کاربری دارید؟',
                          style: TextStyle(
                            color: MyColors.kDarkGreyColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
