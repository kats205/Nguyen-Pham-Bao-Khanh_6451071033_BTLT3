import 'package:flutter/material.dart';

class DoubleTapView extends StatefulWidget {
  const DoubleTapView({super.key});

  @override
  State<DoubleTapView> createState() => _DoubleTapViewState();
}

class _DoubleTapViewState extends State<DoubleTapView> {
  Color _boxColor = Colors.blue;

  void _toggleColor() {
    setState(() {
      _boxColor = (_boxColor == Colors.blue) ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Double Tap Demo - 6451071033'),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: _toggleColor,
          child: Container(
            width: 150,
            height: 150,
            color: _boxColor,
            child: const Center(
              child: Text(
                'Double Tap',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
