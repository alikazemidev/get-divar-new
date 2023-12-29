import 'package:flutter/cupertino.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:get_divar/module/home/screen/base_screen.dart';
import 'package:iconsax/iconsax.dart';

class SearchSCreen extends StatelessWidget {
  const SearchSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainAppBar(title: 'جستجو'),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFieldWidget(
                hintText: 'اگهی مورد نظر خود را جستجو کنید.',
                icon: Iconsax.search_normal,
                IconColor: MyColors.kPrimaryColor,controller: TextEditingController()
              ),
            ],
          ),
        ),
      ],
    );
  }
}
