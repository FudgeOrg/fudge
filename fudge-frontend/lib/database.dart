import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fudge/user.dart';

class Database {
  List<User> getAllUsers() {
    List<User> users = [];
    FirebaseFirestore.instance.collection('users').get().then((snapshot) {
      snapshot.docs.forEach((doc) {
        users.add(User.fromJson(doc.data()));
      });
    });
    return users;
  }
}
