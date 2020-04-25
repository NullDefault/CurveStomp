import 'package:flutter/material.dart';

import 'landing_page.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  final appTitle = 'Covid-19 Local Spread Prevention App';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      initialRoute: 'LandingPage',
      routes: {
        'LandingPage': (context) => LandingPage(),
      },
    );
  }
}

