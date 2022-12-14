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
    apiKey: 'AIzaSyACApat7YQdxat5Kycs5BK3EjUv7lDY_MA',
    appId: '1:576488436102:web:8fd6ef9eeab672f056bc07',
    messagingSenderId: '576488436102',
    projectId: 'sunhack-7fc16',
    authDomain: 'sunhack-7fc16.firebaseapp.com',
    storageBucket: 'sunhack-7fc16.appspot.com',
    measurementId: 'G-Z33LEBBP2X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJj1fA0SMwBnq-KlMQCMwl0uJaOSOKT1w',
    appId: '1:576488436102:android:59f7e09d9e2489a556bc07',
    messagingSenderId: '576488436102',
    projectId: 'sunhack-7fc16',
    storageBucket: 'sunhack-7fc16.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDumQMGg5cUPQ3RvKRDGyVCuamAa8rgJ3A',
    appId: '1:576488436102:ios:4786be01f35d067356bc07',
    messagingSenderId: '576488436102',
    projectId: 'sunhack-7fc16',
    storageBucket: 'sunhack-7fc16.appspot.com',
    iosClientId: '576488436102-38095isdb00giaafbnf98i8v4gp3urtb.apps.googleusercontent.com',
    iosBundleId: 'com.example.project',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDumQMGg5cUPQ3RvKRDGyVCuamAa8rgJ3A',
    appId: '1:576488436102:ios:4786be01f35d067356bc07',
    messagingSenderId: '576488436102',
    projectId: 'sunhack-7fc16',
    storageBucket: 'sunhack-7fc16.appspot.com',
    iosClientId: '576488436102-38095isdb00giaafbnf98i8v4gp3urtb.apps.googleusercontent.com',
    iosBundleId: 'com.example.project',
  );
}
