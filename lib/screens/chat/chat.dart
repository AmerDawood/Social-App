import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_app/screens/auth/component/text_widget.dart';
import 'package:social_app/screens/chat/component/text_filed_chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {}, icon: const Icon(Iconsax.arrow_left_2)),
                const SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image.asset(
                      'images/a1.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                InkWell(
                  onTap: () {},
                  child: ClipOval(
                    child: Image.asset(
                      'images/face1.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const TextWidget(
            text: 'Maria Lucero',
            color: Color(0xff010A1B),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 12,
          ),
          const TextWidget(
            text: 'Active',
            color: Color(0xff6B7A9F),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Iconsax.call, size: 40),
                color: const Color(0xffAC8AF7),
              ),
              const SizedBox(
                width: 25,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.video,
                  color: Color(0xffAC8AF7),
                  size: 40,
                ),
              ),
            ],
          ),
          Container(
            height: 520,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 410),
                    child: Container(
                      color: Colors.white,
                      child: TextFieldChat(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
