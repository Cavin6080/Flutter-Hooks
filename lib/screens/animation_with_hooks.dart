import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimationWithHooks extends HookWidget {
  const AnimationWithHooks({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 3),
    );
    final Animation<double> animation =
        Tween<double>(begin: 15, end: 30).animate(controller);
    controller.forward();
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Text(
              "Demo Animation",
              style: TextStyle(
                fontSize: animation.value,
                color: Colors.black,
              ),
            );
          },
        ),
      ),
    );
  }
}
