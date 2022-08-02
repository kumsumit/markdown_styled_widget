import 'package:flutter/material.dart';
import 'package:markdown_styled_widget/ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  onChanged: (v) {
                    setState(() {
                      text = v;
                    });
                  },
                ),
              ),
              const Divider(thickness: 5),
              Expanded(
                  child:
                      SingleChildScrollView(child: MarkdownStyledWidget(text))),
            ],
          ),
        ),
      ),
    );
  }
}
