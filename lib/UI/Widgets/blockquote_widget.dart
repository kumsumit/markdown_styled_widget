import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';
import 'package:markdown_styled_widget/UI/Widgets/text_widget.dart';

class BlockquoteWidget extends StatelessWidget {
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
  final Color blockquoteBackground;
  final Color blockquoteBorderColor;
  final double blockquoteBorderSize;
  final double blockquotePadding;

  const BlockquoteWidget({
    super.key,
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
    required this.blockquoteBackground,
    required this.blockquoteBorderColor,
    required this.blockquoteBorderSize,
    required this.blockquotePadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(blockquotePadding),
      decoration: BoxDecoration(
        color: blockquoteBackground,
        border: Border(
          left: BorderSide(
            color: blockquoteBorderColor,
            width: blockquoteBorderSize,
          ),
        ),
      ),
      child: TextWidget(
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
    );
  }
}
