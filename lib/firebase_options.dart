import 'package:firebase_core/firebase_core.dart';
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
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyB_hvs8AlE0g6ra4XHMo8LYX-wHDgsj44o',
    authDomain: 'ocommerce-final-na-yata.firebaseapp.com',
    projectId: 'ocommerce-final-na-yata',
    storageBucket: 'ocommerce-final-na-yata.firebasestorage.app',
    messagingSenderId: '601020006181',
    appId: '1:601020006181:web:59e30febaee9ca9324e4cc',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_hvs8AlE0g6ra4XHMo8LYX-wHDgsj44o',
    authDomain: 'ocommerce-final-na-yata.firebaseapp.com',
    projectId: 'ocommerce-final-na-yata',
    storageBucket: 'ocommerce-final-na-yata.firebasestorage.app',
    messagingSenderId: '601020006181',
    appId: '1:601020006181:android:59e30febaee9ca9324e4cc',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB_hvs8AlE0g6ra4XHMo8LYX-wHDgsj44o',
    authDomain: 'ocommerce-final-na-yata.firebaseapp.com',
    projectId: 'ocommerce-final-na-yata',
    storageBucket: 'ocommerce-final-na-yata.firebasestorage.app',
    messagingSenderId: '601020006181',
    appId: '1:601020006181:ios:59e30febaee9ca9324e4cc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB_hvs8AlE0g6ra4XHMo8LYX-wHDgsj44o',
    authDomain: 'ocommerce-final-na-yata.firebaseapp.com',
    projectId: 'ocommerce-final-na-yata',
    storageBucket: 'ocommerce-final-na-yata.firebasestorage.app',
    messagingSenderId: '601020006181',
    appId: '1:601020006181:macos:59e30febaee9ca9324e4cc',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB_hvs8AlE0g6ra4XHMo8LYX-wHDgsj44o',
    authDomain: 'ocommerce-final-na-yata.firebaseapp.com',
    projectId: 'ocommerce-final-na-yata',
    storageBucket: 'ocommerce-final-na-yata.firebasestorage.app',
    messagingSenderId: '601020006181',
    appId: '1:601020006181:web:59e30febaee9ca9324e4cc',
  );
}
