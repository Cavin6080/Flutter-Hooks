import 'package:flutter/material.dart';
import 'package:flutter_hooks_demo/routes.dart';
import 'package:flutter_hooks_demo/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRoutes();

    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}
