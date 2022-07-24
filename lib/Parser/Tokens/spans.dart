class Span {
  final List<Span> spans;

  Span(this.spans);
}

class CommonSpan extends Span {
  CommonSpan(List<Span> spans) : super(spans);
}

class BoldSpan extends Span {
  BoldSpan(List<Span> spans) : super(spans);
}

class ItalicSpan extends Span {
  ItalicSpan(List<Span> spans) : super(spans);
}

class CodeSpan extends Span {
  CodeSpan(List<Span> spans) : super(spans);
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

  TextSpan(this.text): super([]);
}