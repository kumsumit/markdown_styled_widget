class Span {
  final List<Span> spans;

  Span(this.spans);
}

class CommonSpan extends Span {
  CommonSpan(super.spans);
}

class BoldSpan extends Span {
  BoldSpan(super.spans);
}

class ItalicSpan extends Span {
  ItalicSpan(super.spans);
}

class CodeSpan extends Span {
  CodeSpan(super.spans);
}

class LinkSpan extends Span {
  final String link;

  LinkSpan({
    required List<Span> spans,
    required this.link,
  }) : super(spans);
}

class TextSpan extends Span {
  String text;

  TextSpan(this.text) : super([]);
}
