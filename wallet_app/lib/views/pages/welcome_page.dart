import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:wallet_app/views/pages/home_page.dart';
import 'package:wallet_app/views/widget_tree.dart';
import 'package:wallet_app/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset('assets/lotties/card.json'),
          SizedBox(height: 20.0),
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
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
