import 'package:condominiosrd/src/routers/appRouter.dart';
// import 'package:condominiosrd/src/services/app_services.dart';
// import 'package:condominiosrd/src/services/authServices.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // late AppService appService;
  // late AuthService authService;
  // late StreamSubscription<bool> authSubscription;

  @override
  void initState() {
    // appService = AppService(widget.sharedPreferences);
    // authService = AuthService();
    // authSubscription = authService.onAuthStateChange.listen(onAuthStateChange);
    super.initState();
  }

  void onAuthStateChange(bool login) {
    // appService.loginState = login;
  }

  @override
  void dispose() {
    // authSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        final GoRouter goRouter = RouterGO().router;
        return MaterialApp.router(
          title: 'Condominios RD',
          routeInformationParser: goRouter.routeInformationParser,
          routeInformationProvider: goRouter.routeInformationProvider,
          routerDelegate: goRouter.routerDelegate,
          theme: ThemeData(backgroundColor: Colors.grey.shade200, scaffoldBackgroundColor: Colors.grey.shade300, textTheme: GoogleFonts.poppinsTextTheme()),
        );
      },
    );
  }
}

// return MaterialApp(
//   debugShowCheckedModeBanner: false,
//   title: 'Condominios RD',
//   theme: ThemeData(backgroundColor: Colors.grey.shade200, scaffoldBackgroundColor: Colors.grey.shade300, textTheme: GoogleFonts.poppinsTextTheme()),
// ).router(
//   routeInformationProvider: _router.routeInformationProvider,
//   routeInformationParser: _router.routeInformationParser,
//   routerDelegate: _router.routerDelegate,
//   title: title,
// );
