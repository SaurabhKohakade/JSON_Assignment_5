import 'package:clean_architecture_assignment_4/data/users_data.dart';
import 'package:clean_architecture_assignment_4/data/models/user_model.dart';
import 'package:flutter/material.dart';

class SignupController extends ChangeNotifier {
  
  void signup(UserModel user){
    usersData.addAll({user.email : user});
  }
}