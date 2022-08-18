import 'package:flutter/material.dart';
import 'package:social_app/fb_controller/fb_auth_controller.dart';
import 'package:social_app/utils/helpers.dart';

import '../auth/component/buttons_widget.dart';
import '../auth/component/text_field_widget.dart';
import '../auth/component/text_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  @override
  void initState() {
    // TODO: implement initState
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordTextController.dispose();
    _emailTextController.dispose();
    super.dispose();
  }
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
              height: 450,
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
                          text: "Sign In to ",
                          color: Color(0xff000000),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        TextWidget(
                          text: "FeedApp",
                          color: Color(0xffAC8AF7),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 33,
                    ),
                     TextFieldWidget(
                      controller: _emailTextController,
                      enable: true,
                      labelText: 'Email',
                      textInputTypel: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                     TextFieldWidget(
                       controller: _passwordTextController,
                      enable: true,
                      labelText: 'Password',
                      textInputTypel: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, "/forget_password");

                      },
                      child: const TextWidget(
                        text: 'Forgot your Password?',
                        color: Color(0xff6B7A9F),
                        fontSize: 16,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    ButtonInSigninPage(
                      title: 'Sign In',
                      function: () {
                        _preformLogin();
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
                            text: 'Sign Up ',
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
  Future<void> _preformLogin() async {
    if (checkData()) {
      await _login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context: context, message: 'Enter required data',error: true);
    return false;
  }

  Future<void> _login() async {
    bool status=await FbAuthController().signIn(context: context, email: _emailTextController.text, password: _passwordTextController.text);
    if(status){
      Navigator.pushReplacementNamed(context, "/App_Screen");
    }

  }

}

