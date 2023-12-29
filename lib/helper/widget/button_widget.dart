import 'package:flutter/material.dart';
import 'package:get_divar/constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.hasBorder = false, this.onPressed});
  final String title;
  final bool hasBorder;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: hasBorder
            ? BorderSide(
                color: MyColors.kPrimaryColor,
                width: 1.5,
              )
            : BorderSide.none,
      ),
      minWidth: double.infinity,
      height: 45,
      color: hasBorder ? Colors.transparent : MyColors.kPrimaryColor,
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: hasBorder ? MyColors.kPrimaryColor : MyColors.kWhiteColor,
        ),
      ),
    );
  }
}
