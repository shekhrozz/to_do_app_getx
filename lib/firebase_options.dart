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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCRla2qo4k3C9jXp53qu_Ywtdyv71m5Dy0',
    appId: '1:143343953419:web:791cc4a029622a37f9890e',
    messagingSenderId: '143343953419',
    projectId: 'to-do-app-getx',
    authDomain: 'to-do-app-getx.firebaseapp.com',
    storageBucket: 'to-do-app-getx.appspot.com',
    measurementId: 'G-XWCW4Z0M45',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBLBRqPVdSZA_U0FZ4FU6HXqIam5ltoH0U',
    appId: '1:143343953419:android:884fb352ff0d6f90f9890e',
    messagingSenderId: '143343953419',
    projectId: 'to-do-app-getx',
    storageBucket: 'to-do-app-getx.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBTnP9Bz5hmixpUSSk4mcvqB8xXH8KE54',
    appId: '1:143343953419:ios:056c68eb2468e29af9890e',
    messagingSenderId: '143343953419',
    projectId: 'to-do-app-getx',
    storageBucket: 'to-do-app-getx.appspot.com',
    iosClientId: '143343953419-uqdioco29fl6laoilen78mdql97lo12v.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoAppGetx',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBTnP9Bz5hmixpUSSk4mcvqB8xXH8KE54',
    appId: '1:143343953419:ios:056c68eb2468e29af9890e',
    messagingSenderId: '143343953419',
    projectId: 'to-do-app-getx',
    storageBucket: 'to-do-app-getx.appspot.com',
    iosClientId: '143343953419-uqdioco29fl6laoilen78mdql97lo12v.apps.googleusercontent.com',
    iosBundleId: 'com.example.toDoAppGetx',
  );
}