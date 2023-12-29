import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_divar/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class TextFieldWidget extends StatefulWidget {
  final TextEditingController controller;
  final TextInputType? textInputType;
  final String hintText;
  final Color? fillColor;
  final IconData? icon;
  final int? maxLines;
  final Color? IconColor;
  TextFieldWidget({
    super.key,
    required this.hintText,
    this.icon,
    this.maxLines,
    this.fillColor,
    this.IconColor,
    required this.controller,
    this.textInputType,
  });

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.maxLines != null ? null : 45,
      child: TextFormField(
        keyboardType: widget.textInputType ?? TextInputType.text,
        obscureText: widget.textInputType == TextInputType.visiblePassword
            ? obscure
            : false,
        controller: widget.controller,
        maxLines: widget.maxLines ?? 1,
        decoration: InputDecoration(
          fillColor: widget.fillColor != null
              ? Color(0xffefefef)
              : MyColors.kWhiteColor,
          filled: true,
          suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscure = !obscure;
                });
              },
              child: Icon(
                widget.textInputType != TextInputType.visiblePassword
                    ? widget.icon
                    : (obscure ? Iconsax.eye_slash : Iconsax.eye),
                color: widget.IconColor == null
                    ? MyColors.kHintTextColor
                    : widget.IconColor,
                size: 24,
              )),
          hintStyle: TextStyle(fontSize: 15),
          hintText: widget.hintText,
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: MyColors.kBorderColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: MyColors.kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
