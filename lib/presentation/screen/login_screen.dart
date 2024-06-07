import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:clean_architecture_assignment_4/presentation/provider/login_controller.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/signup_screen.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/elevated_button.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/text_field_rounded.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/user_welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LoginController>(builder: (context, data, _) {
        return Center(
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/image.png'),
              Container(
                margin: const EdgeInsets.fromLTRB(80, 120, 0, 0),
                child: Column(
                  children: [
                    const Text(
                      'SAPDOS',
                      style: TextStyle(
                        fontFamily: 'Fonttitle',
                        color: ColorConst.AppTextColor,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(height: 70),
                    const Text(
                      'Welcom Back',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConst.AppTextColor,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'Enter existing account’s details',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomRoundedTextField(
                      hintText: 'Enter email/Phone no',
                      icon: const Icon(Icons.mail),
                      obsecure_Text: false,
                      controller: emailController,
                      error_msg: 'please enter valid emal/phone no',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomRoundedTextField(
                      hintText: 'Paasword',
                      icon: const Icon(Icons.lock),
                      obsecure_Text: true,
                      controller: passwordController,
                      error_msg: 'please enter valid credential',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Checkbox(value: false, onChanged: (bool) {}),
                        const Text('Remember me',
                            style: TextStyle(fontSize: 13)),
                        const SizedBox(
                          width: 57,
                        ),
                        InkWell(
                          child: const Text(
                            'Forgotten password?',
                            style: TextStyle(fontSize: 13),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomElevatedButton(
                      btnname: 'LOGIN',
                      textColor: Colors.white,
                      callback: () {
                        if (data.login(emailController.text.toString().trim(),
                            passwordController.text.toString().trim())) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => UserWelcomeScreen(
                                      userName:
                                          emailController.text.toString())));
                        }
                      },
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        const Text('Not on sapdos?'),
                        InkWell(
                          child: const Text(
                            ' Signup',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ColorConst.AppTextColor),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SiginupScreen()));
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
        );
      }),
    );
  }
}
