import 'package:flutter/material.dart';

class LongPressView extends StatelessWidget {
  const LongPressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Long Press Demo - 6451071033'),
      ),
      body: Center(
        child: GestureDetector(
          onLongPress: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Long press detected')),
            );
          },
          child: const Card(
            elevation: 4,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Press and hold me',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
