import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'yubikit_windows_method_channel.dart';

abstract class YubikitWindowsPlatform extends PlatformInterface {
  /// Constructs a YubikitWindowsPlatform.
  YubikitWindowsPlatform() : super(token: _token);

  static final Object _token = Object();

  static YubikitWindowsPlatform _instance = MethodChannelYubikitWindows();

  /// The default instance of [YubikitWindowsPlatform] to use.
  ///
  /// Defaults to [MethodChannelYubikitWindows].
  static YubikitWindowsPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [YubikitWindowsPlatform] when
  /// they register themselves.
  static set instance(YubikitWindowsPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
