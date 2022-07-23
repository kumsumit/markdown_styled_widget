import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';
import 'package:markdown_styled_widget/Parser/Tokens/token.dart';

class Paragraph extends Token {
  final List<Span> spans;

  Paragraph(this.spans);
}
