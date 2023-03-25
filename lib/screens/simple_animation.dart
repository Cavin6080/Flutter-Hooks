import 'package:flutter/material.dart';

class AnimationWithoutHooks extends StatefulWidget {
  const AnimationWithoutHooks({super.key});

  @override
  State<AnimationWithoutHooks> createState() => _AnimationWithoutHooksState();
}

class _AnimationWithoutHooksState extends State<AnimationWithoutHooks>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animation = Tween<double>(
      begin: 15.0,
      end: 30.0,
    ).animate(controller);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
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
