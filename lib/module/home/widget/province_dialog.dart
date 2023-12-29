import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_divar/backend/response/province_response.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/module/auth/controller/register_controller.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:get_divar/module/home/widget/city_dialog.dart';
import 'package:iconsax/iconsax.dart';

class ProvinceDialog extends StatelessWidget {
  final List<Province> provinceList;
  const ProvinceDialog({super.key, required this.provinceList});

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
            'انتخاب استان',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.kDarkTextColor,
            ),
          ),
          SizedBox(height: 15),
          TextFieldWidget(
              hintText: 'جستجو در استان ها',
              fillColor: Color(0xffefefef),
              icon: Iconsax.search_normal,
              controller: TextEditingController()),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: provinceList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    Get.back();
                    controller.onSelectedProvince(provinceList[index].name.toString());
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: CityDialog(
                            cityList: provinceList[index].cities,
                            selectedProvince: provinceList[index].name,
                          ),
                        );
                      },
                    );
                  },
                  trailing: Icon(
                    CupertinoIcons.chevron_left,
                    color: MyColors.kHintTextColor,
                  ),
                  title: Text(
                    provinceList[index].name ?? '',
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
