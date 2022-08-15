import 'package:flutter/material.dart';

class MyPostsProfile extends StatelessWidget {
  const MyPostsProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child:  Image(image: AssetImage('images/imagePost.png'),fit: BoxFit.cover,height: double.infinity,),

    );
  }
}
