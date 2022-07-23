import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';

class TextWidget extends StatelessWidget {
  final List<Span> spans;

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
    return Container();
  }
}
