import 'package:flutter/material.dart';

import 'component/buttons_widget.dart';
import 'component/text_field_widget.dart';
import 'component/text_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffAC8AF7),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/simage.png'),
            Container(
              height: 600,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        TextWidget(
                          text: "Sign Up to ",
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(
                          text: "SpeedApp",
                          color: Color(0xffAC8AF7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const TextFieldWidget(
                      enable: true,
                      labelText: 'Email',
                      textInputTypel: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextFieldWidget(
                      enable: true,
                      labelText: 'Email',
                      textInputTypel: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const TextFieldWidget(
                      enable: true,
                      labelText: 'Password',
                      textInputTypel: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ButtonInSigninPage(
                      title: 'Sign Up',
                      function: () {
                        Navigator.pushReplacementNamed(context, "/register_screen");

                      },
                      backColor: const Color(0xffAC8AF7),
                      color: const Color(
                        0xffFFFFFF,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget(
                          text: 'Dont have an Account?',
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/Login_Screen");
                          },
                          child: const TextWidget(
                            text: 'Sign IN ',
                            color: Color(0xff6B7A9F),
                            fontSize: 16,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
