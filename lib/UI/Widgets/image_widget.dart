import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String link;

  const ImageWidget({Key? key, required this.link}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(link);
  }
}
