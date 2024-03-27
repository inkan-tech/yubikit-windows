#include "include/yubikit_windows/yubikit_windows_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "yubikit_windows_plugin.h"

void YubikitWindowsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  yubikit_windows::YubikitWindowsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
