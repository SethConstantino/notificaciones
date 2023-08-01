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
    apiKey: 'AIzaSyAsLQOqLbQUuCMb9_5x7hGZXSem4tSsxqM',
    appId: '1:353582954162:web:3fc8cb2ba99fdd01d1bbab',
    messagingSenderId: '353582954162',
    projectId: 'notificaciones-seth',
    authDomain: 'notificaciones-seth.firebaseapp.com',
    storageBucket: 'notificaciones-seth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGJ08abAEE5WUXBgIuc0n2LJ0MuEzsEUA',
    appId: '1:353582954162:android:5e2297e6429a93d4d1bbab',
    messagingSenderId: '353582954162',
    projectId: 'notificaciones-seth',
    storageBucket: 'notificaciones-seth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjOSsDcd_vGcdW3oRxuj2TRDV4hxvraKE',
    appId: '1:353582954162:ios:0470837b8d6b37e1d1bbab',
    messagingSenderId: '353582954162',
    projectId: 'notificaciones-seth',
    storageBucket: 'notificaciones-seth.appspot.com',
    iosClientId: '353582954162-svflluth4380qikfn3316t2b5in5k1ut.apps.googleusercontent.com',
    iosBundleId: 'com.example.notificacionesFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjOSsDcd_vGcdW3oRxuj2TRDV4hxvraKE',
    appId: '1:353582954162:ios:770b21462f39a4b2d1bbab',
    messagingSenderId: '353582954162',
    projectId: 'notificaciones-seth',
    storageBucket: 'notificaciones-seth.appspot.com',
    iosClientId: '353582954162-m9j78abs5vasl2hoiqc76j3o03838u3k.apps.googleusercontent.com',
    iosBundleId: 'com.example.notificacionesFirebase.RunnerTests',
  );
}
