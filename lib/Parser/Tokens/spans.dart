class Span {
  final String text;

  final bool bold;
  final bool italic;

  Span(this.text, this.bold, this.italic);
}

class CommonSpan extends Span {
  CommonSpan(String text, {
    bool bold = false,
    bool italic = false,
  }) : super(text, bold, italic);
}

class CodeSpan extends Span {
  CodeSpan(String text, {
    bool bold = false,
    bool italic = false,
  }) : super(text, bold, italic);
}

class LinkSpan extends Span {
  final String link;

  LinkSpan(String text, this.link, {
    bool bold = false,
    bool italic = false,
  }) : super(text, bold, italic);
}
