import 'package:flutter/material.dart';

class TapCounterView extends StatefulWidget {
  const TapCounterView({super.key});

  @override
  State<TapCounterView> createState() => _TapCounterViewState();
}

class _TapCounterViewState extends State<TapCounterView> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tap Counter Demo - 6451071033'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tap count: $_count',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _increment,
              child: const Text('Tap Here'),
            ),
          ],
        ),
      ),
    );
  }
}
