import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

@RoutePage()
class TabBarExampleScreen extends HookWidget {
  const TabBarExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab Bar Example"),
        bottom: TabBar(
          controller: tabController,
          tabs: const [
            Text(
              "Home",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "Details",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          Center(child: Text("Home View")),
          Center(child: Text("Details View")),
          Center(child: Text("Profile View")),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => tabController.index < 2 ? tabController.index++ : null,
        child: const Icon(Icons.add),
      ),
    );
  }
}
