import 'package:markdown_styled_widget/Parser/Tokens/line.dart';
import 'package:markdown_styled_widget/Parser/Tokens/blockquote.dart';
import 'package:markdown_styled_widget/Parser/Tokens/code_multiline.dart';
import 'package:markdown_styled_widget/Parser/Tokens/heading.dart';
import 'package:markdown_styled_widget/Parser/Tokens/paragraph.dart';
import 'package:markdown_styled_widget/Parser/Tokens/spans.dart';
import 'package:markdown_styled_widget/Parser/regex_strings.dart';

import 'Tokens/image.dart';
import 'Tokens/token.dart';

class Engine {
  static final RegExp _header1 = RegExp(RegexStrings.header1);
  static final RegExp _header2 = RegExp(RegexStrings.header2);
  static final RegExp _header3 = RegExp(RegexStrings.header3);
  static final RegExp _header4 = RegExp(RegexStrings.header4);
  static final RegExp _header5 = RegExp(RegexStrings.header5);
  static final RegExp _header6 = RegExp(RegexStrings.header6);

  static final RegExp _blockquote = RegExp(RegexStrings.blockquote);
  static final RegExp _image = RegExp(RegexStrings.image);
  static final RegExp _codeMultiline = RegExp(RegexStrings.codeMultiline);
  static final RegExp _line = RegExp(RegexStrings.line);

  static final RegExp _italic = RegExp(RegexStrings.italic);
  static final RegExp _bold = RegExp(RegexStrings.bold);
  static final RegExp _link = RegExp(RegexStrings.link);
  static final RegExp _codeSingleline = RegExp(RegexStrings.codeSingleline);

  static List<Token> parseText(String text) {
    var lines = text.split('\n');
    List<Token> tokens = [];

    bool isCode = false;
    String code = '';

    for (var line in lines) {
      if (isCode) {
        if (_codeMultiline.hasMatch(line)) {
          isCode = false;
          tokens.add(CodeMultiline(code));
          code = '';
        } else {
          code += '$line\n';
        }

        continue;
      }

      line = line.trim();

      if (line == '') {
        continue;
      } else if (_line.hasMatch(line)) {
        tokens.add(Line());
      } else if (_header1.hasMatch(line)) {
        final match = _header1.firstMatch(line);
        if (match != null) {
          tokens.add(Heading(_parseSpans(match.group(1)), type: HeadingType.heading1));
        }
      } else if (_header2.hasMatch(line)) {
        final match = _header2.firstMatch(line);
        if (match != null) {
          tokens.add(Heading(_parseSpans(match.group(1)), type: HeadingType.heading2));
        }
      } else if (_header3.hasMatch(line)) {
        final match = _header3.firstMatch(line);
        if (match != null) {
          tokens.add(Heading(_parseSpans(match.group(1)), type: HeadingType.heading3));
        }
      } else if (_header4.hasMatch(line)) {
        final match = _header4.firstMatch(line);
        if (match != null) {
          tokens.add(Heading(_parseSpans(match.group(1)), type: HeadingType.heading4));
        }
      } else if (_header5.hasMatch(line)) {
        final match = _header5.firstMatch(line);
        if (match != null) {
          tokens.add(Heading(_parseSpans(match.group(1)), type: HeadingType.heading5));
        }
      } else if (_header6.hasMatch(line)) {
        final match = _header6.firstMatch(line);
        if (match != null) {
          tokens.add(Heading(_parseSpans(match.group(1)), type: HeadingType.heading6));
        }
      } else if (_codeMultiline.hasMatch(line)) {
        isCode = true;
      } else if (_blockquote.hasMatch(line)) {
        final match = _blockquote.firstMatch(line);
        if (match != null) {
          tokens.add(Blockquote(_parseSpans(match.group(1))));
        }
      } else if (_image.hasMatch(line)) {
        final match = _image.firstMatch(line);
        if (match != null && match.group(4) != null) {
          tokens.add(Image(match.group(4)!));
        }
      } else {
        tokens.add(Paragraph(_parseSpans(line)));
      }
    }

    if (isCode) {
      tokens.add(CodeMultiline(code));
    }

    return tokens;
  }

  static List<Span> _parseSpans(String? text) {
    if (text != null) {
      List<Span> spans = [CommonSpan([TextSpan(text)])];
      return spans;
    }

    return [];
  }
}