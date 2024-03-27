#ifndef FLUTTER_PLUGIN_YUBIKIT_WINDOWS_PLUGIN_H_
#define FLUTTER_PLUGIN_YUBIKIT_WINDOWS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace yubikit_windows {

class YubikitWindowsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  YubikitWindowsPlugin();

  virtual ~YubikitWindowsPlugin();

  // Disallow copy and assign.
  YubikitWindowsPlugin(const YubikitWindowsPlugin&) = delete;
  YubikitWindowsPlugin& operator=(const YubikitWindowsPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace yubikit_windows

#endif  // FLUTTER_PLUGIN_YUBIKIT_WINDOWS_PLUGIN_H_
