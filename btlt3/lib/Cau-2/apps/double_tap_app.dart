import 'package:flutter/material.dart';
import '../views/double_tap_view.dart';

class DoubleTapApp extends StatelessWidget {
  const DoubleTapApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoubleTapView(),
    );
  }
}
