import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class TextInputExampleScreen extends HookWidget {
  const TextInputExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final signInController = useTextEditingController();
    String text = "";
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text input example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: TextFormField(
                  controller: signInController,
                  validator: (s) {
                    if (s?.isEmpty ?? false) {
                      return "Please add some text";
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  text = signInController.text;
                }
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
