import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

class whatToDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommended Precautions', style: TextStyle(fontSize: 18)),
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
                    title: Text(
                      'Washing your hands',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  content: Text("Frequently washing your hands is a necessity.",
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
                                          'Washing hands',
                                          style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue),
                                          textAlign: TextAlign.center,
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
                                      Icon(Icons.thumbs_up_down)
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
                    title: Text(
                      'Social Distancing',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  content: Text(
                      "The scientifically proven way to reduce the spread of the virus.",
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
                                          'Social Distancing',
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue
                                          ),
                                          textAlign: TextAlign.center,
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
                                      Icon(Icons.beach_access)
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
                    title: Text(
                      'Clean and Disinfect',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  content: Text(
                      "Frequently clean any touched objects/surfaces using a "
                      "household cleaning spray or wipe.",
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
                                          'Proper disinfection will help immensely in preventing infections.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.blue
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                            ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                            'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', textAlign: TextAlign.center,),
                                      ),
                                      Icon(
                                        Icons.highlight
                                      )
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
                    title: Text(
                      'Cover your coughs and sneezes',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  content: Text(
                      "Use a tissue to cover your coughs and sneezes then dispose of it in the trash.",
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
                                          'If possible, wear a mask whenever you have to be in public.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.blue
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                                            ' Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.'
                                                ' Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. '
                                                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', textAlign: TextAlign.center,),
                                      ),
                                      Icon(Icons.favorite)
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
