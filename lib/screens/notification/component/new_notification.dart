import 'package:flutter/material.dart';

class NewNotification extends StatelessWidget {
  const NewNotification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 5,
          top: 20,
          right: 5
      ),
      child: ListTile(
        leading:Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
          ),
          child: Image(
            image: NetworkImage('https://us.123rf.com/450wm/luismolinero/luismolinero1909/luismolinero190917934/130592146-handsome-young-man-in-pink-shirt-over-isolated-blue-background-keeping-the-arms-crossed-in-frontal-p.jpg?ver=6'),
            fit: BoxFit.cover,
          ),
          clipBehavior: Clip.antiAlias,
        ),
        title: Text('Ali Liked your post'),
        subtitle: Text('20 sec ago'),
        trailing: IconButton(
          onPressed: (){},
          icon: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
