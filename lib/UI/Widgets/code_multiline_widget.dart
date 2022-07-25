import 'package:flutter/material.dart';

class CodeMultilineWidget extends StatelessWidget {
  final String text;
  final Color background;
  final double padding;
  final double borderRadius;
  final Color foreground;
  final String font;
  final double fontSize;
  final FontWeight fontWeight;

  const CodeMultilineWidget({
    Key? key,
    required this.text,
    required this.background,
    required this.padding,
    required this.borderRadius,
    required this.foreground,
    required this.font,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: background,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: foreground,
          fontFamily: font,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
