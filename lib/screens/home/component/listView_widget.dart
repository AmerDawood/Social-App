import 'package:flutter/material.dart';
class ListTileView extends StatelessWidget {

  ListTileView({required this.text,
    // required this.screen,
  });


  final String text;
  // final String screen;screen

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsetsDirectional.only(start: 20),
      onTap: () {
        // Navigator.pop(context);
        // Navigator.pushNamed(context, screen);
      },
      title:  Text(
        text,
        style: TextStyle(
            color: Color(0xff010A1B),
            fontSize: 22,
            fontWeight: FontWeight.bold),
      ),
    );
  }

}
