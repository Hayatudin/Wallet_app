import 'package:flutter/material.dart';
import 'package:wallet_app/views/widget_tree.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/huluFix.png', width: 200.0, height: 200.0)),
          Text('HULUFIX', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return WidgetTree();
                  },
                ),
              );
            },
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
