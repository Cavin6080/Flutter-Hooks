import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_demo/screens/animation_with_hooks.dart';
import 'package:flutter_hooks_demo/screens/simple_animation.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = useState<int>(0);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Home screen is working"),
          Center(child: Text(count.value.toString())),
          ElevatedButton(
            onPressed: () => count.value++,
            child: const Text(
              'Increase',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimationWithoutHooks(),
              ),
            ),
            child: const Text(
              'Next',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AnimationWithHooks(),
              ),
            ),
            child: const Text(
              'Next Hook',
              style: TextStyle(
                // color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
