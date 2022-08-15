
import 'package:flutter/material.dart';
import 'package:social_app/auth/component/text_widget.dart';
class SocialButton extends StatelessWidget {
  const SocialButton({
    Key? key,
    required this.title,
    required this.backColor,
    required this.textColor,
  }) : super(key: key);

  final Color backColor;
  final String title;
  final Color textColor;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color:textColor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: backColor,
        minimumSize: const Size(315, 48),
      ),
    );
  }
}



class ButtonInSigninPage extends StatelessWidget {
  const ButtonInSigninPage({
    Key? key,
    required this.title,
    required this.function,
    required this.backColor,
    required this.color,
  }) : super(key: key);

  final String title;
  final Function function;
  final Color backColor;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const  EdgeInsetsDirectional.only(top: 15),

      child: ElevatedButton(
        onPressed:()=>function(),
        child: TextWidget(
          fontWeight: FontWeight.w100,
          color: color,
          fontSize: 20,
          text:title ,
        ),
        style: ElevatedButton.styleFrom(
          primary: backColor,
          minimumSize: const Size(315, 48),
          shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
              ),
          ),

        ),

    );
  }
}




class ApplyButtonWidget extends StatelessWidget {
  const ApplyButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsetsDirectional.only(top: 63),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text(
            'Apply',
            style:  TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            minimumSize:const Size(315, 48),
          ),
        ),
      ),
    );
  }
}
class ResetWidget extends StatelessWidget {
  const ResetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child:const Text(
        'Reset Password',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color(0xff000000),
        minimumSize: Size(315, 48),
      ),
    );
  }
}
