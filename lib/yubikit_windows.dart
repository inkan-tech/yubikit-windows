
import 'yubikit_windows_platform_interface.dart';

class YubikitWindows {
  Future<String?> getPlatformVersion() {
    return YubikitWindowsPlatform.instance.getPlatformVersion();
  }
}
