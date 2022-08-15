import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_app/screens/profile/component/button_profile.dart';
import 'package:social_app/screens/profile/component/mu_posts_profile.dart';
import 'package:social_app/screens/profile/component/my_store_profile.dart';
import 'package:social_app/screens/profile/component/profile_data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
      appBar: AppBar(
        backgroundColor: HexColor("#FFFFFF"),
        elevation: 0,
        title: Text('Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),

      body: ListView(
        children: [
          ProfileData(),

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Amer Dawood',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Flutter & Laravel Developer',
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 15
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(
              top: 24
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

            ButtonProfile(text: 'Edit Profile'),
            ButtonProfile(text: 'Contact'),




              ],
            ),
          ),

          MyStoryProfile(),


          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 8,
              right: 8
            ),
            child: Container(
              height: 310,
              width: 100,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15),
                  itemCount: 10,
                  itemBuilder: (BuildContext ctx, index) {
                    return MyPostsProfile();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}





