import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MostSocialPost extends StatelessWidget {
  const MostSocialPost({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
