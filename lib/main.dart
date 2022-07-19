import 'package:condominiosrd/src/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Condominios RD',
      home: RegistroPage(),
      theme: ThemeData(backgroundColor: Colors.grey.shade200, scaffoldBackgroundColor: Colors.grey.shade300, textTheme: GoogleFonts.poppinsTextTheme()),
    );
  }
}
