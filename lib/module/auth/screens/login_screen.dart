import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/helper/widget/appbar_widget.dart';
import 'package:get_divar/helper/widget/button_widget.dart';
import 'package:get_divar/module/auth/screens/register_screen.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppbarWidget(title: 'ورود'),
              SizedBox(height: 20),
              TextFieldWidget(
                hintText: 'شماره موبایل',
                icon: Iconsax.mobile,
                controller: TextEditingController(),
              ),
              SizedBox(height: 10),
              TextFieldWidget(
                  hintText: 'رمز عبور',
                  icon: Iconsax.eye_slash,
                  controller: TextEditingController()),
              SizedBox(height: 20),
              ButtonWidget(
                title: 'ورود',
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => RegisterScreen()),
                    child: Text(
                      'ثبت نام کنید',
                      style: TextStyle(
                        color: MyColors.kPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'حساب کاربری ندارید؟',
                    style: TextStyle(
                      color: MyColors.kDarkGreyColor,
                      fontSize: 16,
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
  }
}
