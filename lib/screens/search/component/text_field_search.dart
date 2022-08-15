import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
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
              prefixIcon: Icon(Iconsax.search_normal,color: Colors.black,),
              hintStyle: TextStyle(color: Colors.grey[800]),
              hintText: "Search",
              fillColor: Colors.white70),
        )
    );
  }
}
