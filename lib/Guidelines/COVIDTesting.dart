import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

class CovidTesting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19 Testing Info'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: new EdgeInsets.only(top: 10, left: 2, right: 2, bottom: 2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.99],
              colors: [Colors.lightBlueAccent, Colors.blueGrey],
            ),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.tealAccent[100],
                  title: GFListTile(
                    title: Text('Who should be tested?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                      "At this time, not everyone needs to be tested, although that may change.",
                      textAlign: TextAlign.center),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      GFButton(
                          color: Colors.green,
                          text: 'Read More',
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            'Who should be tested for COVID-19?',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          }),
                    ],
                  ),
                ),
                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.tealAccent[100],
                  title: GFListTile(
                    title: Text('How do you get tested?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                      "Your doctor/health department will decide if you should get tested or not.",
                      textAlign: TextAlign.center),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      GFButton(
                          color: Colors.green,
                          text: 'Read More',
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('How do you get tested?',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          }),
                    ],
                  ),
                ),
                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.tealAccent[100],
                  title: GFListTile(
                    title: Text('What to do while waiting for results?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                      "The time it takes for a test to go through is different in each area.",
                      textAlign: TextAlign.center),
                  buttonBar: GFButtonBar(
                    children: <Widget>[
                      GFButton(
                          color: Colors.green,
                          text: 'Read More',
                          onPressed: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            'If you develop more symptoms, call your health provider and get emergency care immediately.',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                            textAlign: TextAlign.center),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ],
                                  );
                                });
                          }),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
