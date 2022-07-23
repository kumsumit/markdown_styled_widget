import 'package:flutter/material.dart';

class MarkdownStyledWidgetStyles {
  final int fontSize;

  final String defaultFont;
  final int defaultWeight;
  final Color defaultForeground;

  final int boldWeight;
  final Color boldForeground;

  final Color linkForeground;

  final String blockquoteFont;
  final int blockquoteSize;
  final Color blockquoteBackground;
  final Color blockquoteForeground;
  final Color blockquoteBorderColor;
  final int blockquoteBorderSize;

  final Color codeBackground;
  final Color codeForeground;
  final String codeFont;
  final int codeWeight;

  final int heading1Size;
  final bool heading1Line;
  final int heading1Weight;

  final int heading2Size;
  final bool heading2Line;
  final int heading2Weight;

  final int heading3Size;
  final bool heading3Line;
  final int heading3Weight;

  final int heading4Size;
  final bool heading4Line;
  final int heading4Weight;

  final int heading5Size;
  final bool heading5Line;
  final int heading5Weight;

  final int heading6Size;
  final bool heading6Line;
  final int heading6Weight;

  final int lineHeight;

  const MarkdownStyledWidgetStyles({
    this.fontSize = 8,
    this.defaultFont = 'Roboto',
    this.defaultWeight = 400,
    this.defaultForeground = Colors.black,

    this.boldWeight = 700,
    this.boldForeground = Colors.black54,

    this.linkForeground = Colors.blueAccent,

    this.blockquoteFont = 'IbarraRealNova',
    this.blockquoteSize = 8,
    this.blockquoteBackground = Colors.grey,
    this.blockquoteForeground = Colors.black54,
    this.blockquoteBorderColor = Colors.blueGrey,
    this.blockquoteBorderSize = 10,

    this.codeBackground = Colors.grey,
    this.codeForeground = Colors.black26,
    this.codeFont = 'RobotoMono',
    this.codeWeight = 400,

    this.heading1Size = 24,
    this.heading1Line = true,
    this.heading1Weight = 500,

    this.heading2Size = 20,
    this.heading2Line = true,
    this.heading2Weight = 500,

    this.heading3Size = 16,
    this.heading3Line = false,
    this.heading3Weight = 500,

    this.heading4Size = 12,
    this.heading4Line = false,
    this.heading4Weight = 500,

    this.heading5Size = 8,
    this.heading5Line = false,
    this.heading5Weight = 500,

    this.heading6Size = 6,
    this.heading6Line = false,
    this.heading6Weight = 500,

    this.lineHeight = 1,
  });
}
