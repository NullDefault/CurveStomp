import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

class otherInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Information'),
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
                    title: Text('Strategies for work',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                    "How to stay safe and productive while following the precaution measures.",
                    textAlign: TextAlign.center,
                  ),
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
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                            ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                            textAlign: TextAlign.center),
                                      ),
                                      Icon(Icons.computer)
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
                    title: Text('Getting groceries',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                    "How to safely get groceries and other necessary supplies",
                    textAlign: TextAlign.center,
                  ),
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
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(Icons.local_pizza)
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
                    title: Text('Mental health tips',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                    "How to stay sane during this unusual and troubling time.",
                    textAlign: TextAlign.center,
                  ),
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
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(Icons.brightness_low)
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
