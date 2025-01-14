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
    apiKey: 'AIzaSyBDegM9CW_v0cQTJCbUcgCtlxRsLZQ9-M4',
    appId: '1:606532137454:web:ef194d93aa6b7234921eff',
    messagingSenderId: '606532137454',
    projectId: 'bbbb-3ca43',
    authDomain: 'bbbb-3ca43.firebaseapp.com',
    storageBucket: 'bbbb-3ca43.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWZdt_Nnz5h2dEsaNTLJ8zMbxVG0NO0UQ',
    appId: '1:606532137454:android:f1a4ae69c66d8beb921eff',
    messagingSenderId: '606532137454',
    projectId: 'bbbb-3ca43',
    storageBucket: 'bbbb-3ca43.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZoQ9RMvZPgIfuaPQ2f_76BKSvtZ-FwJk',
    appId: '1:606532137454:ios:0bbfb81689e88d30921eff',
    messagingSenderId: '606532137454',
    projectId: 'bbbb-3ca43',
    storageBucket: 'bbbb-3ca43.appspot.com',
    iosBundleId: 'com.example.hj',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZoQ9RMvZPgIfuaPQ2f_76BKSvtZ-FwJk',
    appId: '1:606532137454:ios:25bf728ca462f6fd921eff',
    messagingSenderId: '606532137454',
    projectId: 'bbbb-3ca43',
    storageBucket: 'bbbb-3ca43.appspot.com',
    iosBundleId: 'com.example.hj.RunnerTests',
  );
}
