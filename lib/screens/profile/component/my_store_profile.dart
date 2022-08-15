import 'package:flutter/material.dart';

class MyStoryProfile extends StatelessWidget {
  const MyStoryProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        top: 20,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image(
                  image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.antiAlias,

              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image(
                  image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.antiAlias,

              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image(
                  image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.antiAlias,

              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image(
                  image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.antiAlias,

              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child:Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                ),
                child: Image(
                  image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                  fit: BoxFit.cover,
                ),
                clipBehavior: Clip.antiAlias,

              ),
            ),


          ],
        ),
      ),
    );
  }
}
