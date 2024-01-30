import 'package:flutter/material.dart';
import 'package:gosustain/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / 932;
    double w = MediaQuery.of(context).size.width / 430;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryTextTheme: TextTheme(
          displayLarge: TextStyle(
              color: Colors.white,
              fontSize: 36 * h,
              package: "google_sans_display"),
        ),
        primaryColor: Color.fromRGBO(30, 124, 64, 1),
      ),
      home: LoginPage(),
    );
  }
}