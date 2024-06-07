import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  final IconButton? icon;
  final String? text;
  final VoidCallback? callback;

  DropDown({this.icon, this.text, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 1040,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ColorConst.AppTextColor,
      ),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                text!,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
          const SizedBox(
            width: 820,
          ),
          IconButton(
            alignment: Alignment.center,
            color: Colors.white,
            onPressed: () {
              showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2025));
            },
            icon: icon!,
          ),
        ],
      ),
    );
  }
}
