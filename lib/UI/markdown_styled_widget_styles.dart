import 'dart:ui';

import 'package:flutter/material.dart';

class MarkdownStyledWidgetStyles {
  final double fontSize;

  final String defaultFont;
  final FontWeight defaultWeight;
  final Color defaultForeground;

  final FontWeight boldWeight;
  final Color boldForeground;

  final Color linkForeground;

  final String blockquoteFont;
  final double blockquoteSize;
  final Color blockquoteBackground;
  final Color blockquoteForeground;
  final Color blockquoteBorderColor;
  final double blockquoteBorderSize;
  final double blockquotePadding;

  final Color codeBackground;
  final double codePadding;
  final double codeBorderRadius;
  final Color codeForeground;
  final String codeFont;
  final FontWeight codeWeight;

  final double heading1Size;
  final bool heading1Line;
  final FontWeight heading1Weight;

  final double heading2Size;
  final bool heading2Line;
  final FontWeight heading2Weight;

  final double heading3Size;
  final bool heading3Line;
  final FontWeight heading3Weight;

  final double heading4Size;
  final bool heading4Line;
  final FontWeight heading4Weight;

  final double heading5Size;
  final bool heading5Line;
  final FontWeight heading5Weight;

  final double heading6Size;
  final bool heading6Line;
  final FontWeight heading6Weight;

  final double lineHeight;
  final Color lineColor;

  final double spaceSize;

  const MarkdownStyledWidgetStyles({
    this.fontSize = 16,
    this.defaultFont = 'Roboto',
    this.defaultWeight = FontWeight.normal,
    this.defaultForeground = Colors.black,

    this.boldWeight = FontWeight.bold,
    this.boldForeground = Colors.black54,

    this.linkForeground = Colors.blueAccent,

    this.blockquoteFont = 'IbarraRealNova',
    this.blockquoteSize = 12,
    this.blockquoteBackground = Colors.grey,
    this.blockquoteForeground = Colors.black54,
    this.blockquoteBorderColor = Colors.blueGrey,
    this.blockquoteBorderSize = 10,
    this.blockquotePadding = 10,

    this.codeBackground = Colors.black12,
    this.codePadding = 10,
    this.codeBorderRadius = 10,
    this.codeForeground = Colors.black87,
    this.codeFont = 'RobotoMono',
    this.codeWeight = FontWeight.normal,

    this.heading1Size = 32,
    this.heading1Line = true,
    this.heading1Weight = FontWeight.w500,

    this.heading2Size = 28,
    this.heading2Line = true,
    this.heading2Weight = FontWeight.w500,

    this.heading3Size = 24,
    this.heading3Line = false,
    this.heading3Weight = FontWeight.w500,

    this.heading4Size = 20,
    this.heading4Line = false,
    this.heading4Weight = FontWeight.w500,

    this.heading5Size = 16,
    this.heading5Line = false,
    this.heading5Weight = FontWeight.w500,

    this.heading6Size = 12,
    this.heading6Line = false,
    this.heading6Weight = FontWeight.w500,

    this.lineHeight = 1,
    this.lineColor = Colors.grey,

    this.spaceSize = 10,
  });
}
