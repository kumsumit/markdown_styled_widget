import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'markdown_styled_widget_method_channel.dart';

abstract class MarkdownStyledWidgetPlatform extends PlatformInterface {
  /// Constructs a MarkdownStyledWidgetPlatform.
  MarkdownStyledWidgetPlatform() : super(token: _token);

  static final Object _token = Object();

  static MarkdownStyledWidgetPlatform _instance = MethodChannelMarkdownStyledWidget();

  /// The default instance of [MarkdownStyledWidgetPlatform] to use.
  ///
  /// Defaults to [MethodChannelMarkdownStyledWidget].
  static MarkdownStyledWidgetPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MarkdownStyledWidgetPlatform] when
  /// they register themselves.
  static set instance(MarkdownStyledWidgetPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
