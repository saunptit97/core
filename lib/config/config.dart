import 'package:firebase_core/firebase_core.dart';

class Config {
  static settingApp() async {
    await Firebase.initializeApp();
  }
}
