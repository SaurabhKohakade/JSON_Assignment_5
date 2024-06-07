import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/doctors_list.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/drawer_items.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/drop_down.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/welcome_user_msg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UserWelcomeScreen extends StatelessWidget {
  final String? userName;

  UserWelcomeScreen({this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Drawer(
                width: MediaQuery.of(context).size.width / 5,
                backgroundColor: ColorConst.AppTextColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                    ),
                    const Text(
                      'SAPDOS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontFamily: 'Fonttitle',
                      ),
                    ),
                    const SizedBox(
                      height: 110,
                    ),
                    DrawerItems(
                      icon: Icons.category,
                      item_txt: 'Categories',
                      callback: () {},
                    ),
                    DrawerItems(
                        icon: Icons.calendar_month,
                        item_txt: 'Appointment',
                        callback: () {}),
                    DrawerItems(
                        icon: Icons.chat, item_txt: 'Chat', callback: () {}),
                    DrawerItems(
                        icon: Icons.settings,
                        item_txt: 'Setting',
                        callback: () {}),
                    DrawerItems(
                        icon: Icons.logout,
                        item_txt: 'Logout',
                        callback: () {}),
                  ],
                ),
                ),
            Container(
              margin: const EdgeInsets.fromLTRB(50, 50, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WelcomeUserMsg(
                      greeting_msg: 'Hello !',
                      user_name: 'Saurabh',
                      image: const AssetImage('assets/image.png')),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  DropDown(
                      text: "Doctor's list",
                      icon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.filter_alt))),
                  const SizedBox(height: 20),
                  Container(
                    height: 300,
                    width: 1040,
                    child: DoctorsList()
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
