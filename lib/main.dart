import 'package:flutter/material.dart';
import 'package:social_app/screens/auth/forget_password.dart';
import 'package:social_app/screens/auth/login.dart';
import 'package:social_app/screens/auth/login_screen.dart';
import 'package:social_app/screens/auth/register_screen.dart';
import 'package:social_app/screens/home/app.dart';
import 'package:social_app/screens/home/home_screen.dart';
import 'package:social_app/screens/notification/notification_screen.dart';
import 'package:social_app/screens/profile/profile_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:"/Login" ,
      routes: {
        "/Login":(context)=>const Login(),
        "/Login_Screen":(context)=>const LoginScreen(),
        "/App_Screen" :(context)=>const AppScreen(),
        "/register_screen" :(context)=>const RegisterScreen(),
        "/forget_password" :(context)=>const ForgetPassword(),
        "/notification_screen" :(context)=>const NotificationScreen(),
<<<<<<< HEAD
        "/home_screen" :(context)=>const HomeScreen(),
=======
        "/profile_screen" :(context)=>const ProfileScreen(),
>>>>>>> c7561c0d5b330de5bb74e6a3aa69a78114c22170
      },
    );
  }
}

