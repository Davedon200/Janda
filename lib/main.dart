import 'pages/Firstpage.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0C1234),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0C1234),
        ),
      ),
      home: Firstpage(),
    );
  }
}
