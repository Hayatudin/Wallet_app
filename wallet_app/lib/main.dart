import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Material APP(stateful)
// scaffold
// app title
// bottom navbar setState

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),),
      home: Scaffold(
        appBar: AppBar(

        ),
    )
  }
}