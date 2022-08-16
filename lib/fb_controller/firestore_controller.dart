import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/post.dart';

class FbFireStoreController {
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<bool> create({required Post post}) async {
    return await _fireStore
        .collection('Posts')
        .add(post.tpMap())
        .then((value) => true)
        .catchError((error) => false
    );
  }

  Stream<QuerySnapshot> read() async* {
    yield* _fireStore.collection('Posts').snapshots();
  }

  Future<bool> update({required Post post}) async {
    return _fireStore
        .collection('Posts')
        .doc(post.id)
        .update(post.tpMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> delete({required String path}) async {
    return _fireStore
        .collection('Posts')
        .doc(path)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }
}