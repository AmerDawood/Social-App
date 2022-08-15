import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

import 'component/new_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#E5E5E5"),
      appBar: AppBar(
        backgroundColor: HexColor("#E5E5E5"),
        elevation: 0,
        title: Text('Notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacementNamed(context, '/App_Screen');
          },
          icon: Icon(Icons.arrow_back_ios,
          color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(
          top: 30
        ),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
          ),

          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 22,
                  left: 15,
                  right: 20,
                ),
                child: Row(
                  children: [
                    Text('Last Notification',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    ),

                    Spacer(),
                    Text('See All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),),


                  ],
                ),
              ),

              NewNotification(),
              NewNotification(),
              NewNotification(),
              NewNotification(),

              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                  left: 10
                ),
                child: Divider(
                  color: Colors.black,
                  indent: 5,
                  endIndent: 100,
                  height: 3,
                  thickness: 2,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 22,
                  left: 15,
                  right: 20,
                ),
                child: Row(
                  children: [
                    Text('Old',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              NewNotification(),
              NewNotification(),
              NewNotification(),
              NewNotification(),

            ],
          ),
        ),
      ),
    );
  }
}

