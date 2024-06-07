import 'package:flutter/material.dart';

class WelcomeUserMsg extends StatelessWidget {
  final String? greeting_msg;
  final String? user_name;
  final AssetImage? image;

  WelcomeUserMsg(
      {required this.greeting_msg,
      required this.user_name,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 900,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting_msg!,
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Text(
                  user_name!,
                  style: TextStyle(fontSize: 45),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 60,
            backgroundImage: image,
          )
        ],
      ),
    );
  }
}
