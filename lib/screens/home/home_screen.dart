import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

import 'component/post_widget.dart';
import 'component/story_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),

      appBar: AppBar(
        backgroundColor: HexColor("#FFFFFF"),
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.sort,color: Colors.black,),
        ),

        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Iconsax.notification,color: Colors.black,),
          ),
        ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10
            ),
            child: Row(
              children: [
                Text('Top Stories',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child:Container(
                       width: 60,
                       height: 60,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(60)
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

                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),
                  StoryWidget(),


                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 20,
                top: 10
            ),
            child: Row(
              children: [
                Text('My Feeds',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),

          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),
          PostWidget(),



        ],
      ),

    );
  }
}




