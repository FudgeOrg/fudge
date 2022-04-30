import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fudge/src/models/user.dart';

class Database {
  Future<List<User>> getAllUsers() async {
    List<User> users = [];
    await FirebaseFirestore.instance.collection('users').get().then((snapshot) {
      users = snapshot.docs.map((doc) => User.fromJson(doc.data())).toList();
    });
    return users;
  }

  Future<User?> getUser(String id) async {
    User? user;
    FirebaseFirestore.instance
        .collection('users')
        .doc(id)
        .get()
        .then((snapshot) {
      if (snapshot.exists) {
        user = User.fromJson(snapshot.data());
      } else {
        user = null;
      }
    });
    return user;
  }

  Future<void> updateUser(User user) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.id)
        .update(user.toJson());
  }

  Future<void> addUser(User user) async {
    await FirebaseFirestore.instance.collection('users').add(user.toJson());
  }

  Future<void> removeUser(String id) async {
    await FirebaseFirestore.instance.collection('users').doc(id).delete();
  }
}
