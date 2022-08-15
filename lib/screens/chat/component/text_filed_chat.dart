import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TextFieldChat extends StatelessWidget {
  const TextFieldChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child:TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              filled: true,
              suffixIcon: Icon(Iconsax.send1,color: Colors.grey,),
              hintStyle: TextStyle(color: Colors.grey),
              hintText: "Write a reply",
              fillColor: Colors.white70),
        )
    );
  }
}