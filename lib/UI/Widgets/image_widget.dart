import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String link;

  const ImageWidget({super.key, required this.link});

  @override
  Widget build(BuildContext context) {
    return Image.network(link);
  }
}
