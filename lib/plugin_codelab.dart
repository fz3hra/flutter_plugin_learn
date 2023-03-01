import 'plugin_codelab_platform_interface.dart';
import 'package:flutter/services.dart';

class PluginCodelab {
  static const MethodChannel _channel = const MethodChannel('plugin_codelab');

  Future<String?> getPlatformVersion() {
    return PluginCodelabPlatform.instance.getPlatformVersion();
  }

  static Future<int?> onKeyDown(int key) async {
    final int? numNotesOn = await _channel.invokeMethod('onKeyDown', [key]);
    return numNotesOn;
  }

  static Future<int?> onKeyUp(int key) async {
    final int? numNotesOn = await _channel.invokeMethod('onKeyUp', [key]);
    return numNotesOn;
  }
}
