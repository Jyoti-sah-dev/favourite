// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyATvgA0lqSYo43nW2OVwx63EjMPKNBpJo4',
    appId: '1:622371209605:web:38efc5631b393bce3a44ec',
    messagingSenderId: '622371209605',
    projectId: 'learn-firebase-51422',
    authDomain: 'learn-firebase-51422.firebaseapp.com',
    databaseURL: 'https://learn-firebase-51422-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'learn-firebase-51422.appspot.com',
    measurementId: 'G-ZME2N142KL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKtXvELpuW5TqnvvAR9LZXk1dUpJW2Omc',
    appId: '1:622371209605:android:54ac7dd5adfe15403a44ec',
    messagingSenderId: '622371209605',
    projectId: 'learn-firebase-51422',
    databaseURL: 'https://learn-firebase-51422-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'learn-firebase-51422.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyATvgA0lqSYo43nW2OVwx63EjMPKNBpJo4',
    appId: '1:622371209605:web:6599e7c63afbdbce3a44ec',
    messagingSenderId: '622371209605',
    projectId: 'learn-firebase-51422',
    authDomain: 'learn-firebase-51422.firebaseapp.com',
    databaseURL: 'https://learn-firebase-51422-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'learn-firebase-51422.appspot.com',
    measurementId: 'G-KQ2STT4C1V',
  );
}
