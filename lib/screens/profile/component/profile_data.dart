import 'package:flutter/material.dart';

class ProfileData extends StatelessWidget {
  const ProfileData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}