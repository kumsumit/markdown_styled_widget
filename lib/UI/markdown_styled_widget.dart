import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/Parser/Tokens/heading.dart';
import 'package:markdown_styled_widget/Parser/Tokens/image.dart' as image;
import 'package:markdown_styled_widget/Parser/Tokens/paragraph.dart' as paragraph;
import 'package:markdown_styled_widget/Parser/engine.dart';
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
    var tokens = Engine.parseText(text);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (var token in tokens)
          if (token is Heading)
            Text(token.spans[0].text)
          else if (token is image.Image)
            Image.network(token.link)
          else if (token is paragraph.Paragraph)
            Text(token.spans[0].text)
          else
            const Text('I dont know')
      ],
    );
  }
}
