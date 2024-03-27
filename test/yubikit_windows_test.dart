import 'package:flutter_test/flutter_test.dart';
import 'package:yubikit_windows/yubikit_windows.dart';
import 'package:yubikit_windows/yubikit_windows_platform_interface.dart';
import 'package:yubikit_windows/yubikit_windows_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockYubikitWindowsPlatform
    with MockPlatformInterfaceMixin
    implements YubikitWindowsPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final YubikitWindowsPlatform initialPlatform = YubikitWindowsPlatform.instance;

  test('$MethodChannelYubikitWindows is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelYubikitWindows>());
  });

  test('getPlatformVersion', () async {
    YubikitWindows yubikitWindowsPlugin = YubikitWindows();
    MockYubikitWindowsPlatform fakePlatform = MockYubikitWindowsPlatform();
    YubikitWindowsPlatform.instance = fakePlatform;

    expect(await yubikitWindowsPlugin.getPlatformVersion(), '42');
  });
}
