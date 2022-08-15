import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

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
        // leading: IconButton(
        //   onPressed: (){},
        //   icon: Icon(Icons.sort,color: Colors.black,),
        // ),
        title: Text('Search',
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
          ),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 270,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(

                          leading:Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: Image(
                              image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                              fit: BoxFit.cover,
                            ),
                            clipBehavior: Clip.antiAlias,

                          ),




                          title: Text('Amer Dawood'),
                          subtitle: Text('30 sec ago'),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child:  Image(image: AssetImage('images/imagePost.png'),fit: BoxFit.cover,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                              top: 5
                          ),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.lovely)),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.message)),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.share)),
                              Spacer(),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.save_2)),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 270,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(

                          leading:Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: Image(
                              image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                              fit: BoxFit.cover,
                            ),
                            clipBehavior: Clip.antiAlias,

                          ),




                          title: Text('Amer Dawood'),
                          subtitle: Text('30 sec ago'),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child:  Image(image: AssetImage('images/imagePost.png'),fit: BoxFit.cover,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                              top: 5
                          ),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.lovely)),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.message)),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.share)),
                              Spacer(),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.save_2)),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 350,
                    width: 270,
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(

                          leading:Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60)
                            ),
                            child: Image(
                              image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
                              fit: BoxFit.cover,
                            ),
                            clipBehavior: Clip.antiAlias,

                          ),




                          title: Text('Amer Dawood'),
                          subtitle: Text('30 sec ago'),
                          trailing: IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.more_horiz),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            clipBehavior: Clip.antiAlias,
                            child:  Image(image: AssetImage('images/imagePost.png'),fit: BoxFit.cover,),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8,
                              right: 8,
                              top: 5
                          ),
                          child: Row(
                            children: [
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.lovely)),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.message)),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.share)),
                              Spacer(),
                              IconButton(onPressed: (){}, icon:Icon(Iconsax.save_2)),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

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
                Padding(
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
                        Center(child: Text('Facebook',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 19
                        ),
                        )),
                      ],
                    ),
                  ),
                ),


                Padding(
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
                        Center(child: Text('Ticktock',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19
                          ),
                        )),
                      ],
                    ),
                  ),
                ),

                Padding(
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
                        Center(child: Text('Twitter',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}
