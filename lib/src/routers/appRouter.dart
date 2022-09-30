import 'package:condominiosrd/src/bloc/loginBloc.dart';
import 'package:condominiosrd/src/index.dart';
import 'package:condominiosrd/src/pantallas/accesos/registro_page.dart';
import 'package:condominiosrd/src/pantallas/error/error_page.dart';
import 'package:condominiosrd/src/pantallas/genericos/baseLayuot.dart';
import 'package:condominiosrd/src/pantallas/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

class RouterGO {
  final GoRouter router = GoRouter(
    // initialLocation: "/",
    redirect: (state) {
      // print(LoginBloc().isLogin);
      // if (!LoginBloc().isLogin) {
      //   final _redirec = state.namedLocation("login");

      //   return _redirec;
      // }

      // return null;
    },
    errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
    routes: <GoRoute>[
      GoRoute(
        name: 'login',
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const LoginPage(),
      ),
      GoRoute(
        path: '/registro',
        builder: (BuildContext context, GoRouterState state) => const RegistroPage(),
      ),
      GoRoute(path: '/home', builder: (BuildContext context, GoRouterState state) => const BaseLayout(contentWidget: HomePage()), routes: [
        GoRoute(
          path: '2',
          builder: (BuildContext context, GoRouterState state) => const BaseLayout(contentWidget: RegistroPage()),
        ),
      ]),
    ],
  );
}
