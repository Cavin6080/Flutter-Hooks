import 'package:flutter/material.dart';
import 'package:flutter_hooks_demo/examples/advanced_animation_example.dart';
import 'package:flutter_hooks_demo/examples/future_example/future_example.dart';
import 'package:flutter_hooks_demo/examples/simple_animation_example.dart';
import 'package:flutter_hooks_demo/examples/counter_example.dart';
import 'package:flutter_hooks_demo/examples/hook_builder_example.dart';
import 'package:flutter_hooks_demo/examples/tabbar_example.dart';
import 'package:flutter_hooks_demo/examples/text_input_example.dart';

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
              child: const Text('Counter example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TextInputExample(),
                ),
              ),
              child: const Text('Text Input Example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TabBarExample(),
                ),
              ),
              child: const Text('TabBar Example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HookBuilderExample(),
                ),
              ),
              child: const Text('Hook Builder Example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SimpleAnimationExample(),
                ),
              ),
              child: const Text('Animation Example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FutureExample(),
                ),
              ),
              child: const Text('Future Example'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AdvancedAnimationExample(),
                ),
              ),
              child: const Text('Advanced animation Example'),
            ),
          ],
        ),
      ),
    );
  }
}
