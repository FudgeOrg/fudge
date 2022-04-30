import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fudge/src/widgets/navigation.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth authInstance = FirebaseAuth.instance;
  UserCredential userInstance = await authInstance.signInAnonymously();

  runApp(MyApp(
    user: userInstance.user,
  ));
}

class MyApp extends StatelessWidget {
  late final String userId;
  MyApp({User? user, Key? key}) : super(key: key) {
    if (user == null) {
      userId = "undefined";
    } else {
      userId = user.uid;
    }
  }

  static const String _title = 'Fudge';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavWidget(title: 'Fudge'),
    );
  }
}
