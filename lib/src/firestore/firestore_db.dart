import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todoapp/model/tasks_model.dart';
import 'package:todoapp/model/user_model.dart';
import 'package:todoapp/src/auth/fire_auth_src.dart';

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

  static Future<bool?> addTask({required TasksModel task}) async {
    bool? taskCreated = false;
    try {
      await _firebaseFireStore
          .collection('users')
          .doc(FireAuth.auth.currentUser!.uid)
          .collection(task.taskListName!)
          .doc(task.id)
          .set(task.toJson());
      taskCreated = true;
      return taskCreated;
    } catch (e) {
      log(e.toString());
    }
    return taskCreated;
  }

  static Future<bool?> updateTask({required TasksModel task}) async {
    bool? taskUpdated = false;
    try {
      await _firebaseFireStore
          .collection('users')
          .doc(FireAuth.auth.currentUser!.uid)
          .collection(task.taskListName!)
          .doc(task.id)
          .update(task.toJson());
      taskUpdated = true;
      return taskUpdated;
    } catch (e) {
      log(e.toString());
    }
    return taskUpdated;
  }

  static Future<bool?> deleteTask({required TasksModel task}) async {
    bool? taskDeleted = false;
    try {
      await _firebaseFireStore
          .collection('users')
          .doc(FireAuth.auth.currentUser!.uid)
          .collection(task.taskListName!)
          .doc(task.id)
          .delete();
      taskDeleted = true;
      return taskDeleted;
    } catch (e) {
      log(e.toString());
    }
    return taskDeleted;
  }

  static FirebaseFirestore get firestore => _firebaseFireStore;
}
