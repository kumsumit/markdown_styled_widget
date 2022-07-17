import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'markdown_styled_widget_platform_interface.dart';

/// An implementation of [MarkdownStyledWidgetPlatform] that uses method channels.
class MethodChannelMarkdownStyledWidget extends MarkdownStyledWidgetPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('markdown_styled_widget');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
