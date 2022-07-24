import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/Parser/Tokens/spans.dart' as span;
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
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

  late TextStyle defaultStyle;
  late TextStyle boldStyle;
  late TextStyle italicStyle;
  late TextStyle linkStyle;
  late TextStyle codeStyle;

  TextWidget({
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
  }) : super(key: key) {
    defaultStyle = TextStyle(
      fontSize: fontSize,
      fontFamily: font,
      fontWeight: weight,
      color: foreground,
    );

    boldStyle = TextStyle(
      fontWeight: boldWeight,
      color: boldForeground,
    );

    italicStyle = const TextStyle(
      decoration: TextDecoration.underline,
    );

    linkStyle = TextStyle(
      color: linkForeground,
      decoration: TextDecoration.underline,
    );

    codeStyle = TextStyle(
      color: codeForeground,
      fontFamily: codeFont,
      fontWeight: codeWeight,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: parseText(spans)
      ),
    );
  }
  
  List<TextSpan> parseText(List<span.Span> spans) {
    List<TextSpan> children = [];

    for (var s in spans) {
      if (s is span.TextSpan) {
        children.add(
          TextSpan(
            text: s.text
          )
        );
      } else if (s is span.CommonSpan) {
        children.add(
          TextSpan(
            style: defaultStyle,
            children: parseText(s.spans),
          )
        );
      } else if (s is span.BoldSpan) {
        children.add(
          TextSpan(
            style: boldStyle,
            children: parseText(s.spans),
          )
        );
      } else if (s is span.ItalicSpan) {
        children.add(
          TextSpan(
            style: italicStyle,
            children: parseText(s.spans),
          )
        );
      } else if (s is span.CodeSpan) {
        children.add(
          TextSpan(
            style: codeStyle,
            children: parseText(s.spans),
          )
        );
      } else if (s is span.LinkSpan) {
        children.add(
          TextSpan(
            style: linkStyle,
            children: parseText(s.spans),
            recognizer: TapGestureRecognizer()
              ..onTap = () async {
                final url = Uri.parse(s.link);
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
          )
        );
      }
    }

    return children;
  }
}
