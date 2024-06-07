import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRoundedTextField extends StatelessWidget {
  final String? hintText;
  final Icon? icon;
  final bool? obsecure_Text;
  final TextEditingController controller;
  final Icon? suffix_Icon;
  final String? error_msg;

  CustomRoundedTextField(
      {this.hintText,
      this.icon,
      this.obsecure_Text,
      required this.controller,
      this.suffix_Icon,
      this.error_msg});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
          height: 40,
          width: 300,
          margin: const EdgeInsets.only(right: 10, left: 10),
          child: TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return error_msg;
              }
              return null;
            },
            controller: controller,
            obscureText: obsecure_Text!,
            decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontSize: 12,
                ),
                prefixIcon: icon,
                suffixIcon: suffix_Icon,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: const BorderSide(color: Colors.blue)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                )),
          )),
    );
  }
}
