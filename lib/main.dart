import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/pages/home_page.dart';
import 'package:practice_app/pages/login_page.dart'; // Removed duplicate import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light, // Ensure it is set to light
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: GoogleFonts.roboto().fontFamily,
        textTheme:
            GoogleFonts.robotoTextTheme(), // Corrected the text theme usage
        appBarTheme: const AppBarTheme(
          color: Colors.blue, // Set the app bar color if not showing correctly
        ),
      ),
      initialRoute: "/login", // this will be initial route
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => MyHomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
