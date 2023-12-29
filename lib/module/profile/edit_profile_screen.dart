import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/helper/widget/appbar_widget.dart';
import 'package:get_divar/helper/widget/button_widget.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:iconsax/iconsax.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              AppbarWidget(
                title: 'ویرایش پروفایل',
                centerTitle: true,
              ),
              SizedBox(height: 30),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: MyColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                    child: Icon(
                  Iconsax.gallery,
                  size: 30,
                  color: MyColors.kHintTextColor,
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'انتخاب عکس پروفایل',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: MyColors.kHintTextColor,
                ),
              ),
              SizedBox(height: 40),
              // TextFieldWidget(hintText: 'نام و نام‌خانودگی',controller: TextEditingController()),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
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
                              'استان',
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
                  SizedBox(width: 20),
                  Expanded(
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
                              'شهر',
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              TextFieldWidget(
                controller: TextEditingController(),
                hintText: 'آدرس',
                maxLines: 3,
              ),
              SizedBox(
                height: 10,
              ),
              ButtonWidget(
                title: 'ویرایش',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
