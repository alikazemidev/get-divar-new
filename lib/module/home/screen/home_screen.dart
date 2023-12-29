import 'package:flutter/material.dart';
import 'package:get_divar/module/home/screen/base_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          MainAppBar(title: 'آگهی‌های جدید'),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return AdCardItem();
            },
          ),
        ),
      ],
    );
  }
}