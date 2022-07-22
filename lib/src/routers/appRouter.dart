import 'package:condominiosrd/src/index.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterGO {
  final GoRouter router = GoRouter(
    initialLocation: "/",
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const RegistroPage(),
      ),
      // GoRoute(
      //   path: '/page2',
      //   builder: (BuildContext context, GoRouterState state) =>
      //       const Page2Screen(),
      // ),
    ],
  );
}
