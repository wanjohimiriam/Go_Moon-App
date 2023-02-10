import 'package:flutter/material.dart';
import 'Pages/homepage.dart';

void main(List<String> args) {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Go to moon",
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(31, 31, 31, 1.0)
      ),
      home: HomePage(),
    );
  }
}

