import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MostPopularAppd extends StatelessWidget {
  final String text;

  MostPopularAppd({
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
            color: HexColor("#ECF8FF"),
            borderRadius: BorderRadius.circular(30)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(text,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19
              ),
            )),
          ],
        ),
      ),
    );
  }
}
