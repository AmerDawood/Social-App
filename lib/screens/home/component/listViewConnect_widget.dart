import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ListTileViewConnect extends StatelessWidget {

  ListTileViewConnect({required this.text,
    // required this.screen,
     required isSwitched,
  });


  final String text;
 final bool isSwitched=false;


  // final String screen;screen

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsetsDirectional.only(start: 20,end: 20),
      onTap: () {
        // Navigator.pop(context);
        // Navigator.pushNamed(context, screen);
      },
      title:Text(
        text,
        style: TextStyle(
            color: Color(0xff010A1B),
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
        trailing:Switch(
    value: isSwitched,
    onChanged: (value) {

    },

        ),
    );
  }

}
