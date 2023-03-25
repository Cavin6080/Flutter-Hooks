import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_hooks_demo/examples/future_example/api.dart';
import 'package:flutter_hooks_demo/examples/future_example/user_model.dart';

class FutureExample extends HookWidget {
  const FutureExample({super.key});

  @override
  Widget build(BuildContext context) {
    final future = useMemoized(() => ApiRepository(), const []);
    final apiFunNotifier = useValueNotifier(future.getData());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Builder example"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HookBuilder(
            builder: (_) {
              final apiFunListenable = useValueListenable(apiFunNotifier);
              return FutureBuilder<List<UserModel>>(
                future: apiFunListenable,
                builder: (_, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (snapshot.hasData) {
                    return Expanded(
                      child: ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(snapshot.data?[index].name ?? ""),
                            subtitle: Text("${snapshot.data?[index].age}"),
                          );
                        },
                      ),
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              );
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          apiFunNotifier.value = future.getData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
