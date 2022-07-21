import 'package:flutter/widgets.dart';

class MarkdownStyledWidgetStyles {
  // Default text
  final TextStyle paragraph; // text

  // Bold text
  final TextStyle strong; // __text__ or **text**

  // Italic text
  final TextStyle italic; // _text_ or *text*

  // Headers
  final TextStyle heading1; // # text
  final TextStyle heading2; // ## text
  final TextStyle heading3; // ### text
  final TextStyle heading4; // #### text
  final TextStyle heading5; // ##### text
  final TextStyle heading6; // ###### text

  // Blockquote
  final TextStyle blockquote; // > text

  // Links
  final TextStyle link; // [text](link)

  // Code
  final TextStyle code; // `text` or ```text```

  const MarkdownStyledWidgetStyles({
    this.paragraph = const TextStyle(),
    this.strong = const TextStyle(),
    this.italic = const TextStyle(),
    this.heading1 = const TextStyle(),
    this.heading2 = const TextStyle(),
    this.heading3 = const TextStyle(),
    this.heading4 = const TextStyle(),
    this.heading5 = const TextStyle(),
    this.heading6 = const TextStyle(),
    this.blockquote = const TextStyle(),
    this.link = const TextStyle(),
    this.code = const TextStyle(),
  });
}
