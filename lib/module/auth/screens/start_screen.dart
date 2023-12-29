import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/helper/widget/button_widget.dart';
import 'package:get_divar/module/auth/screens/login_screen.dart';
import 'package:get_divar/module/auth/screens/register_screen.dart';


class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'اپلیکیشن آگهی گت',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: MyColors.kPrimaryColor,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'به اپلیکیشن آگهی گت خوش آمدید',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff464646),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ButtonWidget(
                title: 'ثبت نام',
                onPressed: () => Get.to(() => RegisterScreen()),
              ),
              SizedBox(height: 12),
              ButtonWidget(
                title: 'ورود',
                hasBorder: true,
                onPressed: () => Get.to(LoginScreen()),
              ),
              SizedBox(height: 66)
            ],
          ),
        ),
      ),
    );
  }
}
