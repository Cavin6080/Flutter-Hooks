import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SimpleAnimationExample extends HookWidget {
  const SimpleAnimationExample({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 2),
    )..forward();
    final Animation<double> animation = useMemoized(
      () => Tween<double>(
        begin: 15,
        end: 20,
      ).animate(controller),
    );
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Animation Demo")),
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Text(
              "Animated Text Demo",
              style: TextStyle(
                fontSize: animation.value,
              ),
            );
          },
        ),
      ),
    );
  }
}
