
import 'package:flutter/material.dart';
import 'package:get_divar/helper/widget/appbar_widget.dart';
import 'package:get_divar/module/home/screen/base_screen.dart';
import 'package:iconsax/iconsax.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: AppbarWidget(
                title: 'نشان شده‌ها',
                centerTitle: true,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return AdCardItem(
                    icon: Iconsax.archive_minus,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}