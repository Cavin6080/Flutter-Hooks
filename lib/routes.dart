import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks_demo/examples/advanced_animation_example.dart';
import 'package:flutter_hooks_demo/examples/counter_example.dart';
import 'package:flutter_hooks_demo/examples/future_example/future_example.dart';
import 'package:flutter_hooks_demo/examples/hook_builder_example.dart';
import 'package:flutter_hooks_demo/examples/simple_animation_example.dart';
import 'package:flutter_hooks_demo/examples/tabbar_example.dart';
import 'package:flutter_hooks_demo/examples/text_input_example.dart';
import 'package:flutter_hooks_demo/screens/home_screen.dart';
part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRoutes extends _$AppRoutes {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: CounterExampleRoute.page,
      path: '/counter',
    ),
    AutoRoute(
      page: TextInputExampleRoute.page,
      path: '/text-input',
    ),
    AutoRoute(
      page: HookBuilderExampleRoute.page,
      path: '/hook-builder',
    ),
    AutoRoute(
      page: SimpleAnimationExampleRoute.page,
      path: '/simple-animation',
    ),
    AutoRoute(
      page: FutureExampleRoute.page,
      path: '/future-example',
    ),
    AutoRoute(
      page: AdvancedAnimationExampleRoute.page,
      path: '/advanced-animation',
    ),
  ];
}

@RoutePage()
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}
