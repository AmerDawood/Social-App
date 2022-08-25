import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social_app/screens/auth/forget_password.dart';
import 'package:social_app/screens/auth/login.dart';
import 'package:social_app/screens/auth/login_screen.dart';
import 'package:social_app/screens/auth/register_screen.dart';
import 'package:social_app/screens/home/app.dart';
import 'package:social_app/screens/home/home_screen.dart';
import 'package:social_app/screens/launch_screen.dart';
import 'package:social_app/screens/notification/notification_screen.dart';
import 'package:social_app/screens/profile/profile_screen.dart';
import 'package:social_app/shared_pref/shared_pref_controller.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPreferences();
  await Firebase.initializeApp();
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
      initialRoute:"/launch" ,
      routes: {
        "/launch":(context)=>const Launch_Screen(),
        "/Login":(context)=>const Login(),
        "/Login_Screen":(context)=>const LoginScreen(),
        "/App_Screen" :(context)=>const AppScreen(),
        "/register_screen" :(context)=>const RegisterScreen(),
        "/forget_password" :(context)=>const ForgetPassword(),
        "/notification_screen" :(context)=>const NotificationScreen(),
        "/home_screen" :(context)=>const HomeScreen(),
        "/profile_screen" :(context)=>const ProfileScreen(),
      },
    );
  }
}

