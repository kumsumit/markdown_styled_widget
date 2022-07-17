import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:markdown_styled_widget/markdown_styled_widget_method_channel.dart';

void main() {
  MethodChannelMarkdownStyledWidget platform = MethodChannelMarkdownStyledWidget();
  const MethodChannel channel = MethodChannel('markdown_styled_widget');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
