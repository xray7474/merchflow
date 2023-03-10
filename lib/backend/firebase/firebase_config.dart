import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBd1V0dtvOEE_f1ciH_TvKj6veHDZzSHT4",
            authDomain: "merchflow-2991e.firebaseapp.com",
            projectId: "merchflow-2991e",
            storageBucket: "merchflow-2991e.appspot.com",
            messagingSenderId: "1068735842083",
            appId: "1:1068735842083:web:c689bc3172d8338b5e2e96"));
  } else {
    await Firebase.initializeApp();
  }
}
