import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/backend/response/province_response.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/module/auth/controller/register_controller.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:iconsax/iconsax.dart';

class CityDialog extends StatelessWidget {
  final List<City>? cityList;
  final String? selectedProvince;
  const CityDialog(
      {super.key, required this.cityList, required this.selectedProvince});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<RegisterController>();
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      // width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'انتخاب شهر',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.kDarkTextColor,
            ),
          ),
          SizedBox(height: 15),
          TextFieldWidget(
              hintText: 'جستجو در شهرها',
              fillColor: Color(0xffefefef),
              icon: Iconsax.search_normal,
              controller: TextEditingController()),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  selectedProvince ?? '',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.chevron_down,
                  color: MyColors.kHintTextColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cityList?.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Get.back();
                    controller.onSelectedCity(cityList![index].name.toString());
                  },
                  trailing: Icon(
                    CupertinoIcons.chevron_left,
                    color: MyColors.kHintTextColor,
                  ),
                  title: Text(
                    cityList?[index].name ?? '',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
