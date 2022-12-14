import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todoapp/src/remote_conf/remote_conf_src.dart';

import '../firebase_options.dart';

class AppSetup {
  static Future<void> get setup async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    await FireRemoteConf.initialize();

    final message = FireRemoteConf.getString(FireRemoteKeys.welcomeKey);

    log("REMOTE CONF:::$message");
    await GetStorage.init();
  }
}
