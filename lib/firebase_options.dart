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
    apiKey: 'AIzaSyDPNxvt4x2fLIWMBu1WaG-bJkIBfIDTGio',
    appId: '1:924332029659:web:c29ac371f06b00e6e5befe',
    messagingSenderId: '924332029659',
    projectId: 'dale-23af1',
    authDomain: 'dale-23af1.firebaseapp.com',
    storageBucket: 'dale-23af1.appspot.com',
    measurementId: 'G-GCBDKLVGVD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyArGthjoproHCgboZyzYcoj_p8JLatT5UU',
    appId: '1:924332029659:android:68b423ae6f5a9370e5befe',
    messagingSenderId: '924332029659',
    projectId: 'dale-23af1',
    storageBucket: 'dale-23af1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCu3TIQtKblxUGS-pePkCDzXRCadkB-YX8',
    appId: '1:924332029659:ios:2c535ce01e7b0ca9e5befe',
    messagingSenderId: '924332029659',
    projectId: 'dale-23af1',
    storageBucket: 'dale-23af1.appspot.com',
    iosBundleId: 'com.example.draya',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCu3TIQtKblxUGS-pePkCDzXRCadkB-YX8',
    appId: '1:924332029659:ios:e84cbf1e62623da0e5befe',
    messagingSenderId: '924332029659',
    projectId: 'dale-23af1',
    storageBucket: 'dale-23af1.appspot.com',
    iosBundleId: 'com.example.draya.RunnerTests',
  );
}
