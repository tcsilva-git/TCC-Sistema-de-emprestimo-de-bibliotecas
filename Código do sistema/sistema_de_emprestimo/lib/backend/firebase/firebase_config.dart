import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC62DNF6osve7A39pvgJRlQElS6gy7Quj0",
            authDomain: "sisemprestimos.firebaseapp.com",
            projectId: "sisemprestimos",
            storageBucket: "sisemprestimos.appspot.com",
            messagingSenderId: "978932472902",
            appId: "1:978932472902:web:69943200fac8d127a3fe47"));
  } else {
    await Firebase.initializeApp();
  }
}
