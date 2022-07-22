import 'package:markdown_styled_widget/Parser/Tokens/token.dart';

enum HeadingType {
  heading1,
  heading2,
  heading3,
  heading4,
  heading5,
  heading6,
}

class Heading extends Token {
  final String text;
  final HeadingType type;

  Heading(this.text, { this.type = HeadingType.heading1 });
}
