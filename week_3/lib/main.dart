import 'package:flutter/material.dart';
import 'package:week_3/layout_widgets_page.dart';
import 'package:week_3/stateful_page.dart';
import 'package:week_3/stateless_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Week 3',
      debugShowCheckedModeBanner: false,
      home: LayoutWidgetsPage()
    );
  }
}
