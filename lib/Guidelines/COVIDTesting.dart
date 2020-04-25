import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

class testing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('COVID-19 Testing Info'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: new EdgeInsets.only(top: 10, left: 2, right: 2, bottom: 2),
          color: Colors.black,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.grey,
                  title: GFListTile(
                    title: Text('Who should be tested?',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content: Text("At this time, not everyone need to get tested."),
                  buttonBar: GFButtonBar(

                    children: <Widget>[
                      GFButton(
                          color: Colors.black,

                          text: 'Read More',
                          onPressed: () {
                            showModalBottomSheet(context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text('Who should be tested for COVID-19?'
                                        , style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(""),
                                      Text(''
                                        , style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                      ),
                                      ),
                                      Text(""),

                                      Text(
                                        'This virus can make people sick, it can be mild, moderate or severe illness. Most of the people with mild illness can be treated'
                                            'at home.\n If you have symptoms/think you have them, cntact your doctor and isolate from anyone. The doctor will decide wheather'
                                            'you get tested or not.',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  );
                                }
                            );
                          }
                      ),

                    ],
                  ),
                ),


                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.grey,
                  title: GFListTile(
                    title: Text('How do you get tested?',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content: Text(
                      "Your doctor/health depatrmednt will decide wheather you get tested or not"),
                  buttonBar: GFButtonBar(

                    children: <Widget>[
                      GFButton(
                          color: Colors.black,

                          text: 'Read More',
                          onPressed: () {
                            showModalBottomSheet(context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text('How do you get tested?'
                                        , style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(""),
                                      Text(
                                        ' What you need to know: \n', style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Text(
                                        '\n Testing is limited to sympathetc, health care provides, and essential workers. \n'
                                            '\nThere are a lot of testing sites across the country, follow your doctor/health provider instructions. \nIf you know someone/you experince'
                                            'any of the COVID-19 symmptoms, call your doctor/health provider right away.',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    ],
                                  );
                                }
                            );
                          }
                      ),

                    ],
                  ),
                ),


                GFCard(
                  boxFit: BoxFit.cover,
                  color: Colors.grey,
                  title: GFListTile(
                    title: Text('What to do while waiting for results?',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content: Text(
                      "The time of testing is diffrent from each area. "),
                  buttonBar: GFButtonBar(

                    children: <Widget>[
                      GFButton(
                          color: Colors.black,
                          text: 'Read More',
                          onPressed: () {
                            showModalBottomSheet(context: context,
                                builder: (context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text(
                                        'If you develop more symptoms, call your health provider and get emergency care immidiatly. '
                                        , style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal,
                                      ),
                                      ),
                                      Text(
                                          "\nDo not leave the house, stay isolated from everyone in the house. Keep your doctor's, health provider information "
                                              "handy.\n Call your doctor right away if you feel not well and they will advise you what to do next. "),


                                    ],
                                  );
                                }
                            );
                          }
                      ),

                    ],
                  ),
                ),

              ]),
        ),
      ),

    );
  }
}