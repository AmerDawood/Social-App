import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:social_app/model/post.dart';
import 'package:social_app/utils/helpers.dart';

import '../../fb_controller/firestore_controller.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({Key? key}) : super(key: key);

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> with Helpers {
  late TextEditingController _titleTextController;
  late TextEditingController _infoTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleTextController = TextEditingController();
    _infoTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _titleTextController.dispose();
    _infoTextController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FFFFFF"),
      appBar: AppBar(
        backgroundColor: HexColor("#FFFFFF"),
        iconTheme: const IconThemeData(color: Color(0xff565656)),
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Post',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

             Padding(
               padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
               child: Container(
                  width: double.infinity,
                 height: 170,
                 color: Colors.grey.shade100,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                         height:150,
                         child: InkWell(
                             onTap: (){
                               print('Add image');
                             },
                             child: Image(image:NetworkImage('https://cwimports.com.au/wp-content/uploads/2020/10/no-image.png')))),
                     // IconButton(onPressed: (){}, icon: Icon(Icons.add_circle))
                   ],
                 ),
               ),
             ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: TextField(
                controller: _titleTextController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(30.0),
                        ),
                    filled: true,

                    // prefixIcon: Icon(Iconsax.search_normal,color: Colors.black,),
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Title",
                    fillColor: Colors.white70
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Container(
                height: 7 * 24.0,
                child: TextField(
                  controller: _infoTextController,
                  maxLines: 7,
                  maxLength: 120,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: "Description",
                    hintStyle: TextStyle(color: Colors.grey[800]),
                      fillColor: Colors.white70,
                    filled: true

                    // fillColor: Colors.grey[100],
                    // filled: true,
                  ),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              performSave();
            }, child: Text('Add Post'))
          ],
        ),
      ),
    );
  }
  Future<void> performSave() async {
    if (checkData()) {
      save();
    }
  }

  bool checkData() {
    if (_titleTextController.text.isNotEmpty &&
        _infoTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context: context, message: 'Enter required data', error:  true);
    return false;
  }

  Future<void> save() async {
    bool status = await FbFireStoreController().create(post: post);
    String message = status ? 'Created Successfully' : 'Create failed';
    showSnackBar(context: context, message: message, error:  !status);
    if(status) clear();
  }

  Post get post {
    Post post = Post();
    post.title = _titleTextController.text;
    post.description = _infoTextController.text;
    return post;
  }

  void clear(){
    _titleTextController.text = '';
    _infoTextController.text = '';
  }
}
