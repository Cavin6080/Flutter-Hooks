import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_demo/examples/counter_example.dart';
import 'package:flutter_hooks_demo/screens/animation_with_hooks.dart';
import 'package:flutter_hooks_demo/screens/simple_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CounterExample(),
                ),
              ),
              child: const Text('Counter Example'),
            ),
          ],
        ),
      ),
    );
  }
}
