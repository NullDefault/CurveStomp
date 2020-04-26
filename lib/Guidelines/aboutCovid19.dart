import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

class aboutCOVID19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Covid-19'),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [0.1, 0.99],
              colors: [Colors.lightBlueAccent, Colors.blueGrey],
            ),
          ),
          padding: new EdgeInsets.only(top: 10, left: 2, right: 2, bottom: 2),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.tealAccent[100],
                  title: GFListTile(
                    title: Text('What is COVID-19?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                      "Information about social distancing, isolation, etc.",
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
                                          'What is COVID-19?',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(Icons.category)
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
                    title: Text('What are the Symptoms?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text(
                      "Coronavirus symptoms include cough, sore throat, fever, and possibly a headache.",
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
                                          'What are the Symptoms?',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                          ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                          ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            fontSize: 15,
                                            fontWeight: FontWeight.normal,
                                            decoration: TextDecoration.none,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Icon(Icons.visibility)
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
                    title: Text('How does it spread?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: 25),
                        textAlign: TextAlign.center),
                  ),
                  content: Text("This virus spreads in various ways.",
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
                                          'How does it spread?',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                        ),
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
                                      Icon(
                                        Icons.record_voice_over
                                      )
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
