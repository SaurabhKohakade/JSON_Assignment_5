import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:clean_architecture_assignment_4/presentation/provider/signup_controller.dart';
import 'package:clean_architecture_assignment_4/data/models/user_model.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/login_screen.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/elevated_button.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/text_field_rounded.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SiginupScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<SignupController>(builder: (context, data, _) {
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
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: ColorConst.AppTextColor,
                        fontSize: 20,
                      ),
                    ),
                    const Text(
                      'Enter existing account’s details',
                      style: TextStyle(
                        color: Color.fromARGB(255, 50, 49, 49),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomRoundedTextField(
                        hintText: 'Enter Email/ Phnoe no.',
                        icon: const Icon(Icons.mail),
                        obsecure_Text: false,
                        controller: emailController,
                        error_msg: 'email must containe @ and  "."',),
                        
                    const SizedBox(
                      height: 30,
                    ),
                    CustomRoundedTextField(
                      hintText: 'Paasword',
                      icon: const Icon(Icons.lock),
                      obsecure_Text: true,
                      suffix_Icon: const Icon(
                        Icons.remove_red_eye,
                      ),
                      controller: passwordController,
                      error_msg: 'password must contain 6 letters and 1 special character',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomRoundedTextField(
                      hintText: 'Confirm paasword',
                      icon: const Icon(Icons.lock),
                      obsecure_Text: true,
                      suffix_Icon: const Icon(
                        Icons.remove_red_eye,
                      ),
                      controller: confirmPasswordController,
                      error_msg: 'please confirm your password',
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    CustomElevatedButton(
                      btnname: 'Sign up',
                      textColor: Colors.white,
                      callback: () {
                        if(emailController.text.toString().isEmpty || passwordController.text.toString().isEmpty || confirmPasswordController.text.toString().isEmpty) {
                          return null;
                        }else {
                        data.signup(UserModel(
                            email: emailController.text.toString().trim(),
                            password:
                                passwordController.text.toString().trim()));
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                      }
                      },
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      children: [
                        const Text('Already on sapdos?'),
                        InkWell(
                          child: const Text(
                            ' Signin',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: ColorConst.AppTextColor),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginScreen()));
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
