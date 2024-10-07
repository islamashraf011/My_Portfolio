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
    apiKey: 'AIzaSyDYb_5npdq7zRBQiDLSaXe2jkH6nUwUXqQ',
    appId: '1:296687057077:web:82e1867522742c263266fc',
    messagingSenderId: '296687057077',
    projectId: 'portfolio-site-5bbdc',
    authDomain: 'portfolio-site-5bbdc.firebaseapp.com',
    storageBucket: 'portfolio-site-5bbdc.appspot.com',
    measurementId: 'G-PGJBBQDN0Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-zHKPppZhPWpQUkpGBX-xGww11hVRCzI',
    appId: '1:296687057077:android:6eb8441cc03ee2d63266fc',
    messagingSenderId: '296687057077',
    projectId: 'portfolio-site-5bbdc',
    storageBucket: 'portfolio-site-5bbdc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4TU1I1WXsFIvC3I9NbGuyQEpgO7f9uVM',
    appId: '1:296687057077:ios:02e3370c6703e6063266fc',
    messagingSenderId: '296687057077',
    projectId: 'portfolio-site-5bbdc',
    storageBucket: 'portfolio-site-5bbdc.appspot.com',
    iosBundleId: 'com.example.portfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4TU1I1WXsFIvC3I9NbGuyQEpgO7f9uVM',
    appId: '1:296687057077:ios:02e3370c6703e6063266fc',
    messagingSenderId: '296687057077',
    projectId: 'portfolio-site-5bbdc',
    storageBucket: 'portfolio-site-5bbdc.appspot.com',
    iosBundleId: 'com.example.portfolio',
  );
}
