import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

import '../home/component/story_widget.dart';
import 'component/most_popular_apps.dart';
import 'component/most_social_post.dart';
import 'component/text_field_search.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
      appBar: AppBar(
        backgroundColor: HexColor("#FFFFFF"),
        elevation: 0,
        title: Text('Search',
        style: TextStyle(
          color: Colors.black,
        ),
        ),
      ),

      body: ListView(
        children:[
          TextFieldSearch(),
          Padding(
            padding: const EdgeInsets.only(
                left: 20,
                top: 10
            ),
            child: Row(
              children: [
                Text('Popular profile in social app',
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
                top: 20
            ),
            child: Row(
              children: [
                Text('Top social posts',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),


          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MostSocialPost(),
                MostSocialPost(),
                MostSocialPost(),
                MostSocialPost(),
                MostSocialPost(),



              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
                left: 20,
                top: 5
            ),
            child: Row(
              children: [
                Text('Most popular apps',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MostPopularAppd(text: 'Facebook'),
                MostPopularAppd(text: 'Twitter'),
                MostPopularAppd(text: 'Instagram'),
                MostPopularAppd(text: 'TicTok'),
                MostPopularAppd(text: 'WhatsApp'),


              ],
            ),
          ),


        ],
      ),
    );
  }
}



