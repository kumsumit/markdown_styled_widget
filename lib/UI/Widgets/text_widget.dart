import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:markdown_styled_widget/Parser/Tokens/spans.dart' as span;
import 'package:url_launcher/url_launcher.dart';

class TextWidget extends StatelessWidget {
  final List<span.Span> spans;

  final double fontSize;
  final String font;
  final FontWeight weight;
  final Color foreground;
  final FontWeight boldWeight;
  final Color boldForeground;
  final Color linkForeground;
  final Color codeBackground;
  final double codePadding;
  final double codeBorderRadius;
  final Color codeForeground;
  final String codeFont;
  final FontWeight codeWeight;

  const TextWidget({
    Key? key,
    required this.spans,
    required this.fontSize,
    required this.font,
    required this.weight,
    required this.foreground,
    required this.boldWeight,
    required this.boldForeground,
    required this.linkForeground,
    required this.codeBackground,
    required this.codePadding,
    required this.codeBorderRadius,
    required this.codeForeground,
    required this.codeFont,
    required this.codeWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Html(
      data: '<p>${parseText(spans)}</p>',
      onLinkTap: (String? url, _, __, ___) async {
        if (url != null) {
          Uri uri = Uri.parse(url);
          if (await canLaunchUrl(uri)) {
            await launchUrl(uri);
          }
        }
      },
      style: {
        "p": Style(
          fontSize: FontSize(fontSize),
          fontFamily: font,
          fontWeight: weight,
          color: foreground,
        ),
        "b": Style(
          fontWeight: boldWeight,
          color: boldForeground,
        ),
        "a": Style(
          color: linkForeground,
          textDecoration: TextDecoration.underline,
        ),
        "code": Style(
          fontFamily: codeFont,
          fontWeight: codeWeight,
          color: codeForeground,
          backgroundColor: codeBackground,
        ),
      },
    );
  }
  
  String parseText(List<span.Span> spans) {
    String result = '';

    for (var s in spans) {
      if (s is span.CommonSpan) {
        result += parseText(s.spans);
      } else if (s is span.BoldSpan) {
        result += '<b>${parseText(s.spans)}</b>';
      } else if (s is span.ItalicSpan) {
        result += '<i>${parseText(s.spans)}</i>';
      } else if (s is span.CodeSpan) {
        result += '<code>${parseText(s.spans)}</code>';
      } else if (s is span.LinkSpan) {
        result += '<a href="${s.link}">${parseText(s.spans)}</a>';
      } else if (s is span.TextSpan) {
        result += s.text;
      }
    }

    return result;
  }
}
