import 'package:flutter/material.dart';
import 'Cau-1/views/tap_demo_view.dart';
import 'Cau-2/views/double_tap_view.dart';
import 'Cau-3/views/long_press_view.dart';
import 'Cau-4/views/tap_counter_view.dart';
import 'Cau-5/views/pointer_events_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BTLT 3 - Gesture & Events - 6451071033',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainMenuView(),
    );
  }
}

class MainMenuView extends StatelessWidget {
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BTLT 5 - Exercises'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildMenuButton(
            context,
            'Bài 1: Tap cơ bản',
            const TapDemoView(),
            Icons.touch_app,
          ),
          const SizedBox(height: 12),
          _buildMenuButton(
            context,
            'Bài 2: Double Tap đổi màu',
            const DoubleTapView(),
            Icons.ads_click,
          ),
          const SizedBox(height: 12),
          _buildMenuButton(
            context,
            'Bài 3: Long Press hiển thị thông báo',
            const LongPressView(),
            Icons.pan_tool_alt,
          ),
          const SizedBox(height: 12),
          _buildMenuButton(
            context,
            'Bài 4: Đếm số lần Tap',
            const TapCounterView(),
            Icons.plus_one,
          ),
          const SizedBox(height: 12),
          _buildMenuButton(
            context,
            'Bài 5: Pointer Events cơ bản',
            const PointerEventsView(),
            Icons.mouse,
          ),
        ],
      ),
    );
  }

  Widget _buildMenuButton(BuildContext context, String title, Widget destination, IconData icon) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      icon: Icon(icon),
      label: Text(title),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

