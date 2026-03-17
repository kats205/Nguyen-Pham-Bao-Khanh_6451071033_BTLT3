import 'package:flutter/material.dart';

class PointerEventsView extends StatefulWidget {
  const PointerEventsView({super.key});

  @override
  State<PointerEventsView> createState() => _PointerEventsViewState();
}

class _PointerEventsViewState extends State<PointerEventsView> {
  double _x = 0;
  double _y = 0;

  void _updateLocation(PointerEvent details) {
    setState(() {
      _x = details.position.dx;
      _y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointer Events Demo - 6451071033'),
      ),
      body: Listener(
        onPointerDown: _updateLocation,
        onPointerMove: _updateLocation,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[200],
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Touch anywhere to see coordinates',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 20),
                Text(
                  'Coordinates: (${_x.toStringAsFixed(1)}, ${_y.toStringAsFixed(1)})',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
