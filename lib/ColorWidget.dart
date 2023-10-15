import 'package:flutter/material.dart';

import 'ColorController.dart';

class ColorWidget extends StatefulWidget {
  final ColorController controller;

  const ColorWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  _ColorWidgetState createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  @override
  void initState() {
    super.initState();
    // When the controller changes, update the UI.
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: widget.controller.color,
    );
  }
}
