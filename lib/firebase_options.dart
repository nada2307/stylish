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
    apiKey: 'AIzaSyDAagK1BH5-zL3yOuiMrpe972E6MbKaS8c',
    appId: '1:202230344337:web:5628e07c9b338247726d30',
    messagingSenderId: '202230344337',
    projectId: 'stylish-1eeb1',
    authDomain: 'stylish-1eeb1.firebaseapp.com',
    storageBucket: 'stylish-1eeb1.appspot.com',
    measurementId: 'G-VPQGS2Q1DM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAM22MMQV5Dhlkws6PmD6GEe6RYXiTUnOI',
    appId: '1:202230344337:android:fc04f050ad67bcb5726d30',
    messagingSenderId: '202230344337',
    projectId: 'stylish-1eeb1',
    storageBucket: 'stylish-1eeb1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDVUrFaPCkwN5gEk0tq8EIbJ8lXAugD_JA',
    appId: '1:202230344337:ios:965ec8e7ed1c6e2e726d30',
    messagingSenderId: '202230344337',
    projectId: 'stylish-1eeb1',
    storageBucket: 'stylish-1eeb1.appspot.com',
    iosBundleId: 'com.nadanabil.stylish.stylish',
  );
}