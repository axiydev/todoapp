import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoapp/model/user_model.dart';

class FirestoreDb {
  static final _firebaseFireStore = FirebaseFirestore.instance;

  static Future<bool?> saveUser({required UserModel? userData}) async {
    try {
      await _firebaseFireStore
          .collection('users')
          .doc(userData!.uid)
          .set(userData.toJson());

      await _firebaseFireStore
          .collection('users')
          .doc(userData.uid)
          .collection('important')
          .add({});

      await _firebaseFireStore
          .collection('users')
          .doc(userData.uid)
          .collection('tasks')
          .add({});
      return true;
    } on FirebaseException {
      log('Fire EXceptio');
    }

    return false;
  }

  static FirebaseFirestore get firestore => _firebaseFireStore;
}
