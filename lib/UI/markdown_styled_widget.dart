import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/UI/markdown_styled_widget_styles.dart';

class MarkdownStyledWidget extends StatelessWidget {
  final String text;
  final MarkdownStyledWidgetStyles style;

  const MarkdownStyledWidget(this.text, {
    this.style = const MarkdownStyledWidgetStyles(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
