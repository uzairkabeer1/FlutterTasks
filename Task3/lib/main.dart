import 'package:flutter/material.dart';

// I'm running this device on my own device so emulator screen will not be shown here
// This is my flutter app with a text "Hi how are you doing in the middle" and with a widget header color green.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const Map<int, Color> colorCodes = {
      50: Color.fromRGBO(147, 205, 72, .1),
      100: Color.fromRGBO(147, 205, 72, .2),
      200: Color.fromRGBO(147, 205, 72, .3),
      300: Color.fromRGBO(147, 205, 72, .4),
      400: Color.fromRGBO(147, 205, 72, .5),
      500: Color.fromRGBO(147, 205, 72, .6),
      600: Color.fromRGBO(147, 205, 72, .7),
      700: Color.fromRGBO(147, 205, 72, .8),
      800: Color.fromRGBO(147, 205, 72, .9),
      900: Color.fromRGBO(147, 205, 72, 1),
    };

    MaterialColor color = const MaterialColor(0xFF93cd48, colorCodes);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: color,
      ), //ThemeDate
      home: const MyHomePage(title: 'My First Flutter App'),
    ); //MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ), //AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hello! How are you doing',
            ), //Text
          ], //Widget
        ), //Column
      ), //Center
    ); //Scaffold
  }
}
