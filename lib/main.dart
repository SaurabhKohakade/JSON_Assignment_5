import 'package:clean_architecture_assignment_4/presentation/provider/login_controller.dart';
import 'package:clean_architecture_assignment_4/presentation/provider/signup_controller.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/home_screen.dart';
import 'package:clean_architecture_assignment_4/presentation/screen/user_welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: LoginController()),
        ChangeNotifierProvider.value(value: SignupController()),
      ],
      child: MaterialApp(
        
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
       home: HomeScreen() 
       //home: UserWelcomeScreen()   
      ),
    );
  }
}















class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold();
  }
}
