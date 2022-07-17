import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_styled_widget/markdown_styled_widget.dart';
import 'package:markdown_styled_widget/markdown_styled_widget_platform_interface.dart';
import 'package:markdown_styled_widget/markdown_styled_widget_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMarkdownStyledWidgetPlatform 
    with MockPlatformInterfaceMixin
    implements MarkdownStyledWidgetPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MarkdownStyledWidgetPlatform initialPlatform = MarkdownStyledWidgetPlatform.instance;

  test('$MethodChannelMarkdownStyledWidget is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMarkdownStyledWidget>());
  });

  test('getPlatformVersion', () async {
    MarkdownStyledWidget markdownStyledWidgetPlugin = MarkdownStyledWidget();
    MockMarkdownStyledWidgetPlatform fakePlatform = MockMarkdownStyledWidgetPlatform();
    MarkdownStyledWidgetPlatform.instance = fakePlatform;
  
    expect(await markdownStyledWidgetPlugin.getPlatformVersion(), '42');
  });
}
