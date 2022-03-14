import 'package:flutter/material.dart';
import 'package:my_web/screens/about.dart';
import 'package:my_web/screens/projects.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        About.id: (context) => About(),
        Projects.id: (context) => Projects(),
      },
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF010305),
        fontFamily: 'Coda',
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
