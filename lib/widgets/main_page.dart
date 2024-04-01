import 'package:flutter/material.dart';

import 'intro_and_button.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int totalClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Intro(callback: handleClick),
        Center(
          child: Text(
            "You've clicked $totalClicks times!",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  void handleClick() {
    setState(() {
      totalClicks++;
    });
  }
}
