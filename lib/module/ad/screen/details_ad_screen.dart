
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/constants/colors.dart';

import 'package:iconsax/iconsax.dart';

class DetailsAdScreen extends StatelessWidget {
  const DetailsAdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.network(
                        'https://img5.downloadha.com/hosein/files/2023/10/CRYMACHINA-cover.jpg',
                        height: MediaQuery.of(context).size.height / 2.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 12,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: MyColors.kWhiteColor,
                        ),
                        child: Icon(
                          Iconsax.arrow_left,
                          color: Color(0xff292D32),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 12,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: MyColors.kWhiteColor,
                      ),
                      child: Icon(
                        Iconsax.archive_add,
                        color: Color(0xff292D32),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                '۱۳۹۷کیا سراتو مونتاژ اتوماتیک آپشنال مدل',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'توضیحات',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: MyColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Text(
                  "سراتو آپشنال ۹۷ در حد صفربدنه بدون رنگ و بدون خط و خش و بدون کوچکترین ضربه و موج ، فنی و سواری بسیار عالی ، چهار حلقه لاستیک نو خارجی به تازگی تعویض شده است.",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(
                      0xff606060,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: MyColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Row(
                  children: [
                    Text(
                      'قیمت',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: MyColors.kHintTextColor,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          '۱٬۶۴۰٬۰۰۰٬۰۰۰',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'تومان',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: MyColors.kHintTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Color(0xff00000029),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        ),
                      ]),
                      child: MaterialButton(
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        color: MyColors.kPrimaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(25))),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: MediaQuery.of(context).size.height / 3,
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Column(
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              'شماره موبایل',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: MyColors.kHintTextColor,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              '۰۹۱۳۰۴۶۱۰۹۴',
                                              style: TextStyle(
                                                fontSize: 22,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 25),
                                        Column(
                                          children: [
                                            SizedBox(height: 20),
                                            Text(
                                              'آدرس',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: MyColors.kHintTextColor,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'تهران، خیابان ستارخان',
                                              style: TextStyle(
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: IconButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          color: MyColors.kPrimaryColor,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.call,
                              color: MyColors.kWhiteColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'اطلاعات تماس',
                              style: TextStyle(
                                  fontSize: 14, color: MyColors.kWhiteColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
