import 'package:flutter/material.dart';
import 'package:wallet_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          HeroWidget(),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(children: [Text('Welcome to melaverse!'), Text('This is where inovation meets reality')]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
