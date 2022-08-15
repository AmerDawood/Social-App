import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

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
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.sort,color: Colors.black,),
        // ),
        title: Text('Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        // actions: [
        //   IconButton(
        //     onPressed: (){},
        //     icon: Icon(Iconsax.notification,color: Colors.black,),
        //   ),
        // ],
      ),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 60
                  ),
                  child: Column(
                    children: [
                      Text('83.7K',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top:5
                        ),
                        child: Text('Following',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Image(
                    image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                    fit: BoxFit.cover,
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60),
                  child:Column(
                    children: [
                      Text('63.7K',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top:5
                        ),
                        child: Text('Followers',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text('Edit Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
              ),
            ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: Center(
                      child: Text('Contact',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                  ),
                ),


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
          ),


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
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      clipBehavior: Clip.antiAlias,
                      child:  Image(image: AssetImage('images/imagePost.png'),fit: BoxFit.cover,height: double.infinity,),

                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
