// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAi92RjLwL51YBGHm85XcsBOVzdB2Jn21U',
    appId: '1:830148968998:web:19dc8a885e02ea26065ce7',
    messagingSenderId: '830148968998',
    projectId: 'fudge-255d5',
    authDomain: 'fudge-255d5.firebaseapp.com',
    storageBucket: 'fudge-255d5.appspot.com',
    measurementId: 'G-HVYVRVS9VG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtTddj3AenmSrhS3xsFQcWXw06pJX4_WA',
    appId: '1:830148968998:android:2b3edffe1fda2f9d065ce7',
    messagingSenderId: '830148968998',
    projectId: 'fudge-255d5',
    storageBucket: 'fudge-255d5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDBVoBlXxNzZw5Ey--EksqMV4xdFJJhFEg',
    appId: '1:830148968998:ios:0cb62dbbd3dc5531065ce7',
    messagingSenderId: '830148968998',
    projectId: 'fudge-255d5',
    storageBucket: 'fudge-255d5.appspot.com',
    iosClientId:
        '830148968998-h4kaipoko778i7crk3ia86bunkelaglg.apps.googleusercontent.com',
    iosBundleId: 'com.awesome.fudge',
  );
}
