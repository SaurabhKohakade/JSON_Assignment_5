import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerItems extends StatelessWidget {
  IconData? icon;
  String? item_txt;
  final VoidCallback? callback;

  DrawerItems({this.icon, this.item_txt, this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback!();
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 0, 20),
        child: Row(
          children: [
            Icon(
              icon as IconData,
              color: Colors.white,
              size: 30,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              item_txt as String,
              style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
    );
  }
}
