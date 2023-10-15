import 'dart:math';
import 'package:flutter/material.dart';

import 'ColorController.dart';
import 'ColorWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ColorController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ColorController(Colors.blue); // Initial color
  }

  void _changeColor() {
    // Select a random color from Colors.primaries
    _controller.changeColor(
      Colors.primaries[Random().nextInt(Colors.primaries.length)],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ColorWidget(controller: _controller),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _changeColor,
              child: Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}
