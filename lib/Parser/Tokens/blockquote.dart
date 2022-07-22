import 'package:markdown_styled_widget/Parser/Tokens/token.dart';

class Blockquote extends Token {
  final String text;
  final int blockquoteLevel;

  Blockquote(this.text, { this.blockquoteLevel = 1 });
}
