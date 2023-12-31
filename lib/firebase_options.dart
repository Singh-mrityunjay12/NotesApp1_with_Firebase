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
    apiKey: 'AIzaSyAYOrbjetJKyhVMF1T4KfgLqFafyrOeNUM',
    appId: '1:676355570630:web:5133724de84a9919be10c7',
    messagingSenderId: '676355570630',
    projectId: 'noteapp-2d05a',
    authDomain: 'noteapp-2d05a.firebaseapp.com',
    storageBucket: 'noteapp-2d05a.appspot.com',
    measurementId: 'G-EF5G7J9GB2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAI1TIbM2MQIvWSgwaLBz9s_MagVuHKllY',
    appId: '1:676355570630:android:056cb45b9185d187be10c7',
    messagingSenderId: '676355570630',
    projectId: 'noteapp-2d05a',
    storageBucket: 'noteapp-2d05a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCnJpmO54h0Jy2GTbGZhBmu471W_076RaQ',
    appId: '1:676355570630:ios:8903cea5197f0eb8be10c7',
    messagingSenderId: '676355570630',
    projectId: 'noteapp-2d05a',
    storageBucket: 'noteapp-2d05a.appspot.com',
    iosBundleId: 'com.example.flutterProjectInternsip',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCnJpmO54h0Jy2GTbGZhBmu471W_076RaQ',
    appId: '1:676355570630:ios:8903cea5197f0eb8be10c7',
    messagingSenderId: '676355570630',
    projectId: 'noteapp-2d05a',
    storageBucket: 'noteapp-2d05a.appspot.com',
    iosBundleId: 'com.example.flutterProjectInternsip',
  );
}
