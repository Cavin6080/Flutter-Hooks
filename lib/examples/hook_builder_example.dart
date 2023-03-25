import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HookBuilderExample extends HookWidget {
  const HookBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    final visible = useValueNotifier(true);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HookBuilder(
              builder: (BuildContext context) {
                final isVisible = useValueListenable(visible);
                return Visibility(
                  visible: isVisible,
                  child: const Text(
                    "This text can be seen",
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => visible.value = !visible.value,
              child: const Text("SHOW/HIDE"),
            ),
          ],
        ),
      ),
    );
  }
}
