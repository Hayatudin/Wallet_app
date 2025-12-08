import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.white),
          title: Text('Flutter Demo Home Page', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.deepPurple,
        ),
        body: Stack(
          children: [
            Image.asset('assets/images/background.jpg', fit: BoxFit.cover),
            Center(
              child: Text('Welcome to Melaverse', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Orhan'),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print('clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
