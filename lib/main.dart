import 'package:flutter/material.dart';
import 'package:testwidgets_demo/abstrctor.dart';

import 'TinderStack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Draggable Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TinderStack(),
    );
  }
}
