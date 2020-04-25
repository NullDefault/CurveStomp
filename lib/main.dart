import 'package:flutter/material.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  final appTitle = 'Covid-19 Local Spread Prevention App';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      initialRoute: 'placeholder',
      routes: {
        'placeholder': (context) => PlaceHolder(),
      },
    );
  }
}

class PlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "placeholder",
      home: new Scaffold(
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return MediaQuery
                .of(context)
                .orientation == Orientation.portrait
                ? _buildNarrowLayout(context)
                : _buildWideLayout(context);
          },
        ),
      ),
    );
  }

  Widget _buildNarrowLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Image(
              image: AssetImage("assets/virus_icon.png"),
            ),
          ),
        ),
        Center(
          child: Text(
            "CurveFlatteningApp",
            style: TextStyle(
                fontSize: 28,
                color: Colors.teal,
                fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }

  Widget _buildWideLayout(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 200,
              height: 200,
              child: Image(
                image: AssetImage("assets/virus_icon.png"),
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            "CurveFlatteningApp",
            style: TextStyle(
              fontSize: 28,
              color: Colors.teal,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}

