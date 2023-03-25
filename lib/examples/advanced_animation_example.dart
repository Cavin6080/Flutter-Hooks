import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class AdvancedAnimationExampleScreen extends HookWidget {
  const AdvancedAnimationExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();
    final animationController = useAnimationController(
      initialValue: 1,
      duration: const Duration(milliseconds: 1500),
    );

    final effect = useEffect(
      () {
        scrollController.addListener(() {
          switch (scrollController.position.userScrollDirection) {
            case ScrollDirection.idle:
              break;
            case ScrollDirection.forward:
              animationController.forward();
              break;
            case ScrollDirection.reverse:
              animationController.reverse();
              break;
          }
        });
      },
      [],
    );
    return Scaffold(
      body: ListView.builder(
        controller: scrollController,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(index.toString()),
          );
        },
      ),
      floatingActionButton: AnimatedBuilder(
        builder: (context, child) {
          return AnimatedContainer(
            curve: Curves.linear,
            width: animationController.value > 0.1 ? 70 : 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(
                animationController.value > 0.1 ? 0 : 100,
              ),
            ),
            duration: const Duration(milliseconds: 1500),
            child: FadeTransition(
              opacity: animationController,
              child: const Center(
                child: Text(
                  "SUBMIT",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
        animation: animationController,
      ),
    );
  }
}
