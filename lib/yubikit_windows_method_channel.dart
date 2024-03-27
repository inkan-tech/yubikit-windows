import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'yubikit_windows_platform_interface.dart';

/// An implementation of [YubikitWindowsPlatform] that uses method channels.
class MethodChannelYubikitWindows extends YubikitWindowsPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('yubikit_windows');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
