import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String btnname;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final Color? textColor;
  final VoidCallback? callback;

  final _formKey = GlobalKey<FormState>();

  CustomElevatedButton(
      {required this.btnname,
      this.icon,
      this.bgColor = ColorConst.AppTextColor,
      this.textStyle,
      this.callback,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _formKey,
      width: 300,
      height: 40,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                side: BorderSide(color: ColorConst.AppTextColor)),
          ),
          onPressed: () {
            callback!();
          },
          child: Text(
            btnname,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 12),
          )),
    );
  }
}
