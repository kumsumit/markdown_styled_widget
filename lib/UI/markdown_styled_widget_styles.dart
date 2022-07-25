import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/UI/markdown_styled_widget.dart';

/// Styles for [MarkdownStyledWidget].
class MarkdownStyledWidgetStyles {
  /// Default size of text.
  final double fontSize;

  /// Default font family for text.
  final String defaultFont;
  /// Default weight for text.
  final FontWeight defaultWeight;
  /// Default text color.
  final Color defaultForeground;

  /// Weight for bold text.
  final FontWeight boldWeight;
  /// Color for bold text.
  final Color boldForeground;

  /// Color for links view.
  final Color linkForeground;

  /// Font family for blockquotes.
  final String blockquoteFont;
  /// Font size for blockquotes.
  final double blockquoteSize;
  /// Background color for blockquotes.
  final Color blockquoteBackground;
  /// Text color for blockquotes.
  final Color blockquoteForeground;
  /// Color of left border for blockquotes.
  final Color blockquoteBorderColor;
  /// Width of left border for blockquotes.
  final double blockquoteBorderSize;
  /// Padding size for blockquotes.
  final double blockquotePadding;

  /// Background color for code statements.
  final Color codeBackground;
  /// Padding size for code statements.
  final double codePadding;
  /// Border radius for multiline code statements.
  final double codeBorderRadius;
  /// Text color for code statements.
  final Color codeForeground;
  /// Font family for code statements.
  final String codeFont;
  /// Font weight for code statements.
  final FontWeight codeWeight;

  ///Font size for level 1 heading.
  final double heading1Size;
  /// The presence of a line after the level 1 title.
  final bool heading1Line;
  /// Font weight for level 1 heading.
  final FontWeight heading1Weight;

  ///Font size for level 2 heading.
  final double heading2Size;
  /// The presence of a line after the level 2 title.
  final bool heading2Line;
  /// Font weight for level 2 heading.
  final FontWeight heading2Weight;

  ///Font size for level 3 heading.
  final double heading3Size;
  /// The presence of a line after the level 3 title.
  final bool heading3Line;
  /// Font weight for level 3 heading.
  final FontWeight heading3Weight;

  ///Font size for level 4 heading.
  final double heading4Size;
  /// The presence of a line after the level 4 title.
  final bool heading4Line;
  /// Font weight for level 4 heading.
  final FontWeight heading4Weight;

  ///Font size for level 5 heading.
  final double heading5Size;
  /// The presence of a line after the level 5 title.
  final bool heading5Line;
  /// Font weight for level 5 heading.
  final FontWeight heading5Weight;

  ///Font size for level 6 heading.
  final double heading6Size;
  /// The presence of a line after the level 6 title.
  final bool heading6Line;
  /// Font weight for level 6 heading.
  final FontWeight heading6Weight;

  /// Height of separate line.
  final double lineHeight;
  /// Color of separate line.
  final Color lineColor;

  ///Distance between widgets.
  final double spaceSize;

  const MarkdownStyledWidgetStyles({
    this.fontSize = 16,
    this.defaultFont = 'packages/markdown_styled_widget/Roboto',
    this.defaultWeight = FontWeight.normal,
    this.defaultForeground = Colors.black,

    this.boldWeight = FontWeight.bold,
    this.boldForeground = Colors.black54,

    this.linkForeground = Colors.blueAccent,

    this.blockquoteFont = 'packages/markdown_styled_widget/IbarraRealNova',
    this.blockquoteSize = 16,
    this.blockquoteBackground = Colors.grey,
    this.blockquoteForeground = Colors.black54,
    this.blockquoteBorderColor = Colors.blueGrey,
    this.blockquoteBorderSize = 10,
    this.blockquotePadding = 10,

    this.codeBackground = Colors.black12,
    this.codePadding = 10,
    this.codeBorderRadius = 10,
    this.codeForeground = Colors.black87,
    this.codeFont = 'packages/markdown_styled_widget/RobotoMono',
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
