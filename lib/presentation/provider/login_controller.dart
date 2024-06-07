import 'package:clean_architecture_assignment_4/data/users_data.dart';
import 'package:clean_architecture_assignment_4/data/models/user_model.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  bool login(String email, String password) {
    if (usersData.containsKey(email)) {
      UserModel user = usersData[email];
      return user.password == password;
    }

    return false;
  }
}
