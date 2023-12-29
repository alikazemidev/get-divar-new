import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_divar/backend/response/province_response.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:get_divar/helper/widget/button_widget.dart';
import 'package:get_divar/module/auth/widgets/textfield_widget.dart';
import 'package:iconsax/iconsax.dart';

class DialogWidget extends StatefulWidget {
  final List<Province> provinces;

  const DialogWidget({super.key, required this.provinces});

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
  bool isExpanded = false;

  List<bool>? expnation;
  @override
  void initState() {
    expnation = List.generate(widget.provinces.length, (index) => false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      // width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            !isExpanded ? 'انتخاب استان' : 'انتخاب شهر',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: MyColors.kDarkTextColor,
            ),
          ),
          SizedBox(height: 15),
          TextFieldWidget(
              hintText: isExpanded ? 'جستجو در شهرها' : 'جستجو در استان ها',
              fillColor: Color(0xffefefef),
              icon: Iconsax.search_normal,
              controller: TextEditingController()),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: widget.provinces.length,
              itemBuilder: (BuildContext context, int index) {
                return ExpansionTile(
                    onExpansionChanged: (value) {
                      setState(() {
                        expnation![index] = value;
                        isExpanded = value;
                      });
                    },
                    trailing: expnation![index]
                        ? Icon(
                            CupertinoIcons.chevron_down,
                            color: MyColors.kHintTextColor,
                          )
                        : Icon(
                            CupertinoIcons.chevron_left,
                            color: MyColors.kHintTextColor,
                          ),
                    title: Text(
                      widget.provinces[index].name ?? '',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: expnation![index]
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    children: [
                      ListView.builder(
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Text(
                                  widget.provinces[index].cities?[index].name ??
                                      ''),
                            ),
                            trailing: Icon(CupertinoIcons.chevron_left),
                          );
                        },
                      ),
                    ]

                    // List.generate(
                    //   6,
                    //   (index) {
                    //     return GestureDetector(
                    //       onTap: () {
                    //         print(widget.provinces[index].cities?[index].name);
                    //       },
                    //       child: ListTile(
                    //         title: Padding(
                    //           padding: const EdgeInsets.only(right: 20),
                    //           child: Text(
                    //               widget.provinces[index].cities?[index].name ??
                    //                   ''),
                    //         ),
                    //         trailing: Icon(CupertinoIcons.chevron_left),
                    //       ),
                    //     );
                    //   },
                    // ),
                    );
              },
            ),
          ),
          //  button confirm and cancel
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                    child: ButtonWidget(
                  hasBorder: true,
                  title: 'انصراف',
                  onPressed: () {},
                )),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: ButtonWidget(
                  title: 'تایید',
                  onPressed: () {},
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
