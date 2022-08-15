import 'package:flutter/material.dart';

import 'component/buttons_widget.dart';
import 'component/text_field_widget.dart';
import 'component/text_widget.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
              height: 500,
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
                          text: "Reset Password ",
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(
                          text: "By Email",
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
                      height: 10,
                    ),
                    ButtonInSigninPage(
                      title: 'Reset Password',
                      function: () {
                        Navigator.pushReplacementNamed(context, "/Login_Screen");
                      },
                      backColor: const Color(0xffAC8AF7),
                      color: const Color(
                        0xffFFFFFF,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget(
                          text: 'Don\'t have an Account?',
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/register_screen");

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
