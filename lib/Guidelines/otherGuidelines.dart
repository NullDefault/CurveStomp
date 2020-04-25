import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

class otherGuidelines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Other strategies'),
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
                    title: Text('Strategies for work',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content: Text(
                      "How to stay safe and follow the precaustion measures"),
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
                                      Text(' If you are smeone who work during this pandamic, you should consider the preivious precaustions measures:'
                                          '\n '
                                        , style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Text(""),

                                      Text(
                                        '\n1. If you are working from home, try to avoid working on bed or couch. \n 2. Go on walks but'
                                            ' maintain sicial distancing. \n3. If you live with someone who goes to work, make sure they wash hands highly '
                                            ' recommanded taking a shower, etc. \n 4. If you are unemployed because of the Virus, search online, there are so '
                                            'many opportunities and local community programs.',
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
                                        ' What you need to know: \n',
                                        style: TextStyle(
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
                                        'If you develop more symptoms, call your health provider and get emergency care immediately . '
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