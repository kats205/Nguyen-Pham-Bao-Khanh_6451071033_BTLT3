import 'package:flutter/material.dart';
import '../views/pointer_events_view.dart';

class PointerEventsApp extends StatelessWidget {
  const PointerEventsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PointerEventsView(),
    );
  }
}
