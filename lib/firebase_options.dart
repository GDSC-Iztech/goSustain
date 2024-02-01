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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBwxsUG0K4CIvChCH3C00yW87cL9cpBUm4',
    appId: '1:824172618911:android:ca8d099b9541b6851aeeaa',
    messagingSenderId: '824172618911',
    projectId: 'gosustain-61e24',
    databaseURL: 'https://gosustain-61e24-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'gosustain-61e24.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEUqG_EKoqutyW6B8fueoeASGbuPt7yek',
    appId: '1:824172618911:ios:5de15e69ba4b18c01aeeaa',
    messagingSenderId: '824172618911',
    projectId: 'gosustain-61e24',
    databaseURL: 'https://gosustain-61e24-default-rtdb.europe-west1.firebasedatabase.app',
    storageBucket: 'gosustain-61e24.appspot.com',
    iosBundleId: 'com.example.gosustain',
  );
}