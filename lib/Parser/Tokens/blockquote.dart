import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';
import 'package:markdown_styled_widget/Parser/Tokens/token.dart';

class Blockquote extends Token {
  final List<Span> spans;
  final int blockquoteLevel;

  Blockquote(this.spans, {this.blockquoteLevel = 1});
}
