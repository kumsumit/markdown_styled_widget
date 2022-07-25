import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/Parser/Tokens/blockquote.dart';
import 'package:markdown_styled_widget/Parser/Tokens/heading.dart';
import 'package:markdown_styled_widget/Parser/Tokens/line.dart';
import 'package:markdown_styled_widget/Parser/Tokens/image.dart' as image;
import 'package:markdown_styled_widget/Parser/Tokens/paragraph.dart'
    as paragraph;
import 'package:markdown_styled_widget/Parser/Tokens/code_multiline.dart';
import 'package:markdown_styled_widget/Parser/engine.dart';
import 'package:markdown_styled_widget/UI/Widgets/blockquote_widget.dart';
import 'package:markdown_styled_widget/UI/Widgets/heading_widget.dart';
import 'package:markdown_styled_widget/UI/Widgets/text_widget.dart';
import 'package:markdown_styled_widget/UI/markdown_styled_widget_styles.dart';
import 'package:markdown_styled_widget/UI/Widgets/line_widget.dart';
import 'package:markdown_styled_widget/UI/Widgets/image_widget.dart';
import 'package:markdown_styled_widget/UI/Widgets/code_multiline_widget.dart';

/// Widget which gets text and parse it by markdown and show by flutter widgets,
/// which could be customize by using style with [MarkdownStyledWidgetStyles].
///
/// ```dart
/// MarkdownStyledWidget(text)
/// // or
/// MarkdownStyleWidget(text,
///   style: MarkdownStyledWidgetStyles(
///     // put your styles here
///   )
/// )
/// ```
class MarkdownStyledWidget extends StatelessWidget {
  /// Text to parse and showing it as a widget.
  final String text;

  /// Styles of a widget.
  final MarkdownStyledWidgetStyles style;

  const MarkdownStyledWidget(
    this.text, {
    this.style = const MarkdownStyledWidgetStyles(),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tokens = Engine.parseText(text);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var token in tokens)
          if (token is Line)
            Column(
              children: [
                LineWidget(
                  lineHeight: style.lineHeight,
                  color: style.lineColor,
                ),
                SizedBox(height: style.spaceSize),
              ],
            )
          else if (token is image.Image)
            Column(
              children: [
                ImageWidget(
                  link: token.link,
                ),
                SizedBox(height: style.spaceSize),
              ],
            )
          else if (token is CodeMultiline)
            Column(
              children: [
                CodeMultilineWidget(
                  text: token.text,
                  background: style.codeBackground,
                  padding: style.codePadding,
                  borderRadius: style.codeBorderRadius,
                  foreground: style.codeForeground,
                  font: style.codeFont,
                  fontSize: style.fontSize,
                  fontWeight: style.defaultWeight,
                ),
                SizedBox(height: style.spaceSize),
              ],
            )
          else if (token is Heading)
            Column(
              children: [
                HeadingWidget(
                  spans: token.spans,
                  fontSize: token.type == HeadingType.heading1
                      ? style.heading1Size
                      : token.type == HeadingType.heading2
                          ? style.heading2Size
                          : token.type == HeadingType.heading3
                              ? style.heading3Size
                              : token.type == HeadingType.heading4
                                  ? style.heading4Size
                                  : token.type == HeadingType.heading5
                                      ? style.heading5Size
                                      : token.type == HeadingType.heading6
                                          ? style.heading6Size
                                          : style.fontSize,
                  font: style.defaultFont,
                  weight: token.type == HeadingType.heading1
                      ? style.heading1Weight
                      : token.type == HeadingType.heading2
                          ? style.heading2Weight
                          : token.type == HeadingType.heading3
                              ? style.heading3Weight
                              : token.type == HeadingType.heading4
                                  ? style.heading4Weight
                                  : token.type == HeadingType.heading5
                                      ? style.heading5Weight
                                      : token.type == HeadingType.heading6
                                          ? style.heading6Weight
                                          : style.defaultWeight,
                  foreground: style.defaultForeground,
                  boldWeight: style.boldWeight,
                  boldForeground: style.boldForeground,
                  linkForeground: style.linkForeground,
                  codeBackground: style.codeBackground,
                  codePadding: style.codePadding,
                  codeBorderRadius: style.codeBorderRadius,
                  codeForeground: style.codeForeground,
                  codeFont: style.codeFont,
                  codeWeight: style.codeWeight,
                  hasLine: token.type == HeadingType.heading1
                      ? style.heading1Line
                      : token.type == HeadingType.heading2
                          ? style.heading2Line
                          : token.type == HeadingType.heading3
                              ? style.heading3Line
                              : token.type == HeadingType.heading4
                                  ? style.heading4Line
                                  : token.type == HeadingType.heading5
                                      ? style.heading5Line
                                      : token.type == HeadingType.heading6
                                          ? style.heading6Line
                                          : false,
                  lineHeight: style.lineHeight,
                  lineColor: style.lineColor,
                ),
                SizedBox(height: style.spaceSize),
              ],
            )
          else if (token is Blockquote)
            Column(
              children: [
                BlockquoteWidget(
                  spans: token.spans,
                  fontSize: style.blockquoteSize,
                  font: style.blockquoteFont,
                  weight: style.defaultWeight,
                  foreground: style.blockquoteForeground,
                  boldWeight: style.boldWeight,
                  boldForeground: style.boldForeground,
                  linkForeground: style.linkForeground,
                  codeBackground: style.codeBackground,
                  codePadding: style.codePadding,
                  codeBorderRadius: style.codeBorderRadius,
                  codeForeground: style.codeForeground,
                  codeFont: style.codeFont,
                  codeWeight: style.codeWeight,
                  blockquoteBackground: style.blockquoteBackground,
                  blockquoteBorderColor: style.blockquoteBorderColor,
                  blockquoteBorderSize: style.blockquoteBorderSize,
                  blockquotePadding: style.blockquotePadding,
                ),
                SizedBox(height: style.spaceSize),
              ],
            )
          else if (token is paragraph.Paragraph)
            Column(
              children: [
                TextWidget(
                  spans: token.spans,
                  fontSize: style.fontSize,
                  font: style.defaultFont,
                  weight: style.defaultWeight,
                  foreground: style.defaultForeground,
                  boldWeight: style.boldWeight,
                  boldForeground: style.boldForeground,
                  linkForeground: style.linkForeground,
                  codeBackground: style.codeBackground,
                  codePadding: style.codePadding,
                  codeBorderRadius: style.codeBorderRadius,
                  codeForeground: style.codeForeground,
                  codeFont: style.codeFont,
                  codeWeight: style.codeWeight,
                ),
                SizedBox(height: style.spaceSize),
              ],
            )
          else
            Column(
              children: [
                const Text('Parsing error'),
                SizedBox(height: style.spaceSize),
              ],
            )
      ],
    );
  }
}
