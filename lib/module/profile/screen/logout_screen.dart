import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_divar/helper/widget/button_widget.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
     
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'آیا از خروج حساب مطمئن هستید؟',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: ButtonWidget(
                    hasBorder: true,
                    title: 'خیر',
                    onPressed: () {},
                  )),
              SizedBox(width: 10),
              Expanded(
                  flex: 1,
                  child: ButtonWidget(
                    title: 'بله',
                    onPressed: () {},
                  )),
            ],
          )
        ],
      ),
    );
  }
}
