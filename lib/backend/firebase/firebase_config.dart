import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCcn8jEHC8vu94raf0Vo5MI5gLRoGuH7z0",
            authDomain: "free-chikanda-4nfe86.firebaseapp.com",
            projectId: "free-chikanda-4nfe86",
            storageBucket: "free-chikanda-4nfe86.firebasestorage.app",
            messagingSenderId: "442544643333",
            appId: "1:442544643333:web:05c17896aec98500f46b6c"));
  } else {
    await Firebase.initializeApp();
  }
}
