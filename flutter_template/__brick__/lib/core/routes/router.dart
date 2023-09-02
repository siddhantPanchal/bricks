import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:template/features/home/presentation/home_screen.dart';

class IRouter {
  static final navigationKey = GlobalKey<NavigatorState>();

  static GoRouter get router => GoRouter(
        navigatorKey: navigationKey,
        routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
        ],
      );
}
