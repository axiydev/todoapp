import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';

import '../firebase_options.dart';

class AppSetup {
  static Future<void> get setup async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await GetStorage.init();
  }
}
