import 'package:firebase_core/firebase_core.dart';

FirebaseApp defaultApp = await Firebase.initializeApp();
// Firebase is the default to await Firebase
// or
FirebaseApp defaultApp = Firebase.app();
