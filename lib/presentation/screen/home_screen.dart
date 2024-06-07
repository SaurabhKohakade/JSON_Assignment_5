import 'package:clean_architecture_assignment_4/presentation/screen/login_screen.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/signup_screen.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/user_welcome_screen.dart';
import 'package:clean_architecture_assignment_4/presentation/widgets/elevated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:clean_architecture_assignment_4/color/color_const.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
   ColorConst();
   return Scaffold(
    body: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Container(
            child: Image.asset('assets/image.png'),),
            Center(
            child: Container(
            margin: EdgeInsets.fromLTRB(80, 120, 0, 0),

            child:  Column(
              children: [
                const Center(
                  child: Text('SAPDOS',
                  style: TextStyle(
                    fontFamily: 'Fonttitle',
                    color: ColorConst.AppTextColor ,                  
                    fontSize: 40,
                  ),
                  ),
                ),

               SizedBox(height: 100,),

                const Center(
                  child:
                   Text('Login to your sapdocs account or create new one',
                   style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConst.AppTextColor,
                   ),
                   )
                   ),

                   SizedBox(height: 50,),

                  CustomElevatedButton(btnname: 'LOGIN',
                  textStyle: const TextStyle(color: Colors.white),
                  textColor: Colors.white,
                  callback: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  ),
                  
                  SizedBox(height: 30,),

                  CustomElevatedButton(btnname: 'SIGN-UP',
                  bgColor: Colors.white,
                  textColor: ColorConst.AppTextColor,
                  callback: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SiginupScreen()));
                  },
                  ),

                  SizedBox(height: 60,),

                  InkWell(
                    child: const Text('Proceed as a Guest',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Color.fromARGB(255, 79, 78, 78),
                      fontSize: 16,
                    ),
                    ),
                    onTap: (){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => UserWelcomeScreen()));
                    },
                  )
              ],
              ),
          ),
        )
        ],
        
      ),


    ),
   );
  }
  
}