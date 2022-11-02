import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

class FireRemoteConf {
  static final _remoteConf = FirebaseRemoteConfig.instance;
  static String getString(String key) => _remoteConf.getString(key); // NEW
  static bool getBool(String key) => _remoteConf.getBool(key); // NEW
  static int getInt(String key) => _remoteConf.getInt(key); // NEW
  static double getDouble(String key) => _remoteConf.getDouble(key);

  static Future<void> initialize() async {
    await _remoteConf.setConfigSettings(RemoteConfigSettings(
        fetchTimeout: const Duration(minutes: 1),
        minimumFetchInterval: const Duration(hours: 1)));
    // await _remoteConf.setDefaults(
    //   const {
    //     FireRemoteKeys.welcomeKey:
    //         'Hey there, this message is coming from local defaults.',
    //   },
    // );
    bool updated = await _remoteConf.fetchAndActivate();

    if (updated) {
      debugPrint('The config has been updated.');
    } else {
      debugPrint('The config is not updated..');
    }
  }
}

class FireRemoteKeys {
  static const String welcomeKey = 'welcome_message';
}
