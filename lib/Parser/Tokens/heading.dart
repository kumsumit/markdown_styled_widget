import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';
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
  final List<Span> spans;
  final HeadingType type;

  Heading(this.spans, {this.type = HeadingType.heading1});
}
