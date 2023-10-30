import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAXWxFXFHXKBIkRtTL5k9K5JwQ_M16OdyQ",
            authDomain: "kospinsuryakencanaapps.firebaseapp.com",
            projectId: "kospinsuryakencanaapps",
            storageBucket: "kospinsuryakencanaapps.appspot.com",
            messagingSenderId: "29800676935",
            appId: "1:29800676935:web:54b35303b1e8f23cc43b62",
            measurementId: "G-6YH5E483JT"));
  } else {
    await Firebase.initializeApp();
  }
}
