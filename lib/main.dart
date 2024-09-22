import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/pages/login_page.dart';
import 'package:practice_app/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, // Ensure it is set to light
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.notoSansTifinagh().fontFamily,
        textTheme:
            GoogleFonts.narnoorTextTheme(), // Corrected the text theme usage
        appBarTheme: const AppBarTheme(
          color: Colors.blue, // Set the app bar color if not showing correctly
        ),
      ),
      initialRoute: MyRoutes.homeRoute, // this will be initial route
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => MyHomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
