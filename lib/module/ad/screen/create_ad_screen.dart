import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/helper/widget/appbar_widget.dart';
import 'package:get_divar/helper/widget/button_widget.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:iconsax/iconsax.dart';

class CreateAdScreen extends StatelessWidget {
  const CreateAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppbarWidget(
              title: 'ایجاد آگهی',
              centerTitle: true,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFieldWidget(hintText: 'عنوان آگهی را وارد کنید',controller: TextEditingController(),),
                  SizedBox(height: 10),
                  TextFieldWidget(hintText: 'دسته بندی آگهی را انتخاب کنید',controller: TextEditingController()),
                  SizedBox(height: 10),
                  TextFieldWidget(
                      hintText: 'توضیحات آگهی را وارد کنید', maxLines: 4,controller: TextEditingController()),
                  SizedBox(height: 10),
                  TextFieldWidget(hintText: 'قیمت آگهی را وارد کنید',controller: TextEditingController()),
                  SizedBox(height: 10),
                  TextFieldWidget(
                    hintText: 'تصویر آگهی را انتخاب کنید',controller: TextEditingController(),
                    icon: Iconsax.gallery,
                  ),
                  SizedBox(height: 10),
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
                  SizedBox(height: 20),
                  ButtonWidget(
                    title: 'ثبت آگهی',
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
