import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';
import 'package:markdown_styled_widget/UI/Widgets/line_widget.dart';
import 'package:markdown_styled_widget/UI/Widgets/text_widget.dart';

class HeadingWidget extends StatelessWidget {
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
  final bool hasLine;
  final double lineHeight;
  final Color lineColor;

  const HeadingWidget({
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
    required this.hasLine,
    required this.lineHeight,
    required this.lineColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          spans: spans,
          fontSize: fontSize,
          font: font,
          weight: weight,
          foreground: foreground,
          boldWeight: boldWeight,
          boldForeground: boldForeground,
          linkForeground: linkForeground,
          codeBackground: codeBackground,
          codePadding: codePadding,
          codeBorderRadius: codeBorderRadius,
          codeForeground: codeForeground,
          codeFont: codeFont,
          codeWeight: codeWeight,
        ),
        if (hasLine) LineWidget(lineHeight: lineHeight, color: lineColor),
      ],
    );
  }
}
