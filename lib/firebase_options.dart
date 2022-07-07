import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCXYbD7tAXy36IxmBqbPHIgLrxi5mU6BN4',
    appId: '1:118783009306:web:5ac0ba5e938db4f2fe27a3',
    messagingSenderId: '118783009306',
    projectId: 'firebase-coba-24789',
    authDomain: 'firebase-coba-24789.firebaseapp.com',
    storageBucket: 'firebase-coba-24789.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCzOujz5ckJVz2RNMQec2x8AIyGZMJJbzQ',
    appId: '1:118783009306:android:dfd12697d5903ff0fe27a3',
    messagingSenderId: '118783009306',
    projectId: 'firebase-coba-24789',
    storageBucket: 'firebase-coba-24789.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFoHPN7-vJJ5GtUj1d6myf8ZScgvQi4Qk',
    appId: '1:118783009306:ios:b1822934234ceb55fe27a3',
    messagingSenderId: '118783009306',
    projectId: 'firebase-coba-24789',
    storageBucket: 'firebase-coba-24789.appspot.com',
    iosClientId: '118783009306-31oknugfcv5taql1uvr3fntuikib0m17.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );
}
