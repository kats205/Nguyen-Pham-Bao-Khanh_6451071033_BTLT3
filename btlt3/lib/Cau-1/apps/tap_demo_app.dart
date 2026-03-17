import 'package:flutter/material.dart';
import '../views/tap_demo_view.dart';

class TapDemoApp extends StatelessWidget {
  const TapDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TapDemoView(),
    );
  }
}
