import 'package:markdown_styled_widget/Parser/Tokens/token.dart';

class Span {
  final String text;

  Span(this.text);
}

class CommonSpan extends Span {
  CommonSpan(String text) : super(text);
}

class StrongSpan extends Span {
  StrongSpan(String text) : super(text);
}

class ItalicSpan extends Span {
  ItalicSpan(String text) : super(text);
}

class CodeSpan extends Span {
  CodeSpan(String text) : super(text);
}

class LinkSpan extends Span {
  final String link;

  LinkSpan(String text, this.link) : super(text);
}

class Paragraph extends Token {
  final List<Span> spans;

  Paragraph(this.spans);
}
