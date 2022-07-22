import 'package:markdown_styled_widget/Parser/Tokens/token.dart';

class Image extends Token {
  final String link;

  Image(this.link);
}
