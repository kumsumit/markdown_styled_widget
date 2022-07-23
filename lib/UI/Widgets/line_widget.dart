import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  final double lineHeight;
  final Color color;

  const LineWidget({
    Key? key,
    required this.lineHeight,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: lineHeight,
      color: color,
    );
  }
}
