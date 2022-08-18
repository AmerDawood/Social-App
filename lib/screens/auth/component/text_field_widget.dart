import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.enable,
    required this.labelText,
    required this.textInputTypel,
    required this.controller,
  }) : super(key: key);

  final String labelText;
  final bool enable;
  final TextInputType textInputTypel;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:controller ,
        keyboardType: textInputTypel,
        decoration: InputDecoration(
          hintText:labelText ,
          enabled: enable,
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey),
          ) ,
          focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.grey),

          ),
        ),
        showCursor: false,
        style: TextStyle(
            height: 1
        ),

    );
  }
}