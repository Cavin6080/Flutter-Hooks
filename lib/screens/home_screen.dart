import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = useState<int>(0);
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text("Home screen is working"),
          ),
          Center(child: Text(count.value.toString())),
          MaterialButton(
            color: Colors.blue,
            onPressed: () => count.value++,
            splashColor: Colors.blueGrey,
            child: const Text(
              'Increase',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
