import 'package:flutter/material.dart';

class Intro extends StatelessWidget {
  final Function callback;

  const Intro({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hello! This is concept of my new game - pets clicker',
          style: TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: const SizedBox(
              height: 150,
              width: 150,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Center(
                  child: Text("Click me!"),
                ),
              ),
            ),
          ),
          onTap: () {
            callback();
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
