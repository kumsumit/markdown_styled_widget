
import 'markdown_styled_widget_platform_interface.dart';

class MarkdownStyledWidget {
  Future<String?> getPlatformVersion() {
    return MarkdownStyledWidgetPlatform.instance.getPlatformVersion();
  }
}
