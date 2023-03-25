import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks_demo/examples/advanced_animation_example.dart';
import 'package:flutter_hooks_demo/examples/future_example/future_example.dart';
import 'package:flutter_hooks_demo/examples/simple_animation_example.dart';
import 'package:flutter_hooks_demo/examples/counter_example.dart';
import 'package:flutter_hooks_demo/examples/hook_builder_example.dart';
import 'package:flutter_hooks_demo/examples/tabbar_example.dart';
import 'package:flutter_hooks_demo/examples/text_input_example.dart';
import 'package:flutter_hooks_demo/routes.dart';

@RoutePage()
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
              onPressed: () => context.pushRoute(
                const CounterExampleRoute(),
              ),
              child: const Text('Counter example'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                const TextInputExampleRoute(),
              ),
              child: const Text('Text Input Example'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                const TabBarExampleRoute(),
              ),
              child: const Text('TabBar Example'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                const HookBuilderExampleRoute(),
              ),
              child: const Text('Hook Builder Example'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                const SimpleAnimationExampleRoute(),
              ),
              child: const Text('Animation Example'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                const FutureExampleRoute(),
              ),
              child: const Text('Future Example'),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                const AdvancedAnimationExampleRoute(),
              ),
              child: const Text('Advanced animation Example'),
            ),
          ],
        ),
      ),
    );
  }
}
