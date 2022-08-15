import 'package:flutter/material.dart';
import 'package:social_app/auth/component/buttons_widget.dart';
import 'package:social_app/auth/component/text_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/fimage.png',),
          const SizedBox(
            height: 42,
          ),
          const TextWidget(
            text: "All Social Media Apps\n are in one Platform",
            color: Color(0xff010A1B),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 32,
          ),

          ButtonInSigninPage(
              title: 'Sign In',
              function: () {
                Navigator.pushReplacementNamed(context, "/Login_Screen");
              },
              backColor:const Color(0xffAC8AF7),
              color:const Color(
                0xffFFFFFF,
              )),

          ButtonInSigninPage(
              title: 'Sign In With Gmail',
              function: () {},
              backColor: Colors.white,
              color:const Color(0xff010A1B),
          ),
          const SizedBox(
            height: 53,
          ),
          const TextWidget(
              text:
                  'By process you agree to the Privacy Policy'
                      ' \n               and Terms & Conditions',
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w100),
        ],
      ),
    );
  }
}
