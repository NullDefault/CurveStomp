import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Landing Page",
      home: new Scaffold(
        backgroundColor: Color.fromRGBO(51, 51, 51, 1),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return MediaQuery.of(context).orientation == Orientation.portrait
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
          child: Container(
            width: 200,
            height: 200,
            child: Image(
              image: AssetImage("assets/virus_icon.png"),
            ),
          ),
        ),
        Center(
          child: Text(
            "CurveFlatteningApp.",
            style: TextStyle(
                fontSize: 28, color: Colors.teal, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: GFButton(
              onPressed: () {},
              text: "Symptom Tracker",
              icon: Icon(Icons.healing),
              shape: GFButtonShape.pills,
              color: Colors.greenAccent,
              textColor: Colors.black,
            ),
          ),
        ),
        Center(
          child: GFButton(
            onPressed: () {},
            text: "Exposure Tracking",
            icon: Icon(Icons.record_voice_over),
            shape: GFButtonShape.pills,
            color: Colors.greenAccent,
            textColor: Colors.black,
          ),
        ),
        Center(
          child: GFButton(
            onPressed: () {},
            text: "General Guidelines",
            icon: Icon(Icons.spa),
            shape: GFButtonShape.pills,
            color: Colors.greenAccent,
            textColor: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildWideLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 180,
                    height: 180,
                    child: Image(
                      image: AssetImage("assets/virus_icon.png"),
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "CurveFlatteningApp.",
                  style: TextStyle(
                      fontSize: 18, color: Colors.teal, fontWeight: FontWeight.bold),
                ),
              )
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: GFButton(
                  onPressed: () {},
                  text: "Symptom Tracker",
                  icon: Icon(Icons.healing),
                  shape: GFButtonShape.pills,
                  color: Colors.greenAccent,
                  textColor: Colors.black,
                ),
              ),
            ),
            Center(
              child: GFButton(
                onPressed: () {},
                text: "Exposure Tracking",
                icon: Icon(Icons.record_voice_over),
                shape: GFButtonShape.pills,
                color: Colors.greenAccent,
                textColor: Colors.black,
              ),
            ),
            Center(
              child: GFButton(
                onPressed: () {},
                text: "General Guidelines",
                icon: Icon(Icons.spa),
                shape: GFButtonShape.pills,
                color: Colors.greenAccent,
                textColor: Colors.black,
              ),
            )
          ],
        ),
      ],
    );
  }
}
