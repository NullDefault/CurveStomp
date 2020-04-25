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
                  color: Colors.grey ,
                  title: GFListTile(
                      title: Text('What is COVID-19?', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "Information about social distancing, isloations, etc"),
                  buttonBar: GFButtonBar(

                    children: <Widget>[
                      GFButton(
                          color: Colors.black,

                          text: 'Read More',
                      onPressed: (){
                        showModalBottomSheet(context: context,
                            builder: (context){
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Text('What is COVID-19?'
                                    ,style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                Text(""),
                                Text('Corona virus is called COVID-19. Corona '
                                    'viruses are a huge group '
                              'of viruses that are common among animals. '
                                  ,style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, fontWeight: FontWeight.normal, decoration: TextDecoration.none,
                              ),
                                ),
                                  Text(""),
                                  Text('What should you know?',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('This virus can be transmitted from animals to hum'
                                      'ans which makes it a novel virus. \n \n This virus ca'
                                      'n make people sick, it can be mild, moderate or severe illness',style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, decoration: TextDecoration.none,
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
                  color: Colors.grey ,
                  title: GFListTile(
                    title: Text('What are the Symptoms?', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "Coronavirus symptoms include cough, sore throat, fever, and possibly a headache."),
                  buttonBar: GFButtonBar(

                    children: <Widget>[
                      GFButton(
                          color: Colors.black,

                          text: 'Read More',
                          onPressed: (){
                            showModalBottomSheet(context: context,
                                builder: (context){
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text('What are the Symptoms?'
                                        ,style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(""),
                                      Text('This virus can make people sick, it can be mild, moderate or severe illness. \n'
                                        ,style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, fontWeight: FontWeight.normal, decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Text('Coronavirus symptoms include cough, sore throat, fever, and possibly a headache.This virus i'
                                          's super scary for people with a weakened immune system, kids, elderly, and those wh'
                                          'o are sick.',style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, decoration: TextDecoration.none,
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
                  color: Colors.grey ,
                  title: GFListTile(
                    title: Text('How it spreads?', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "This virus spreads spreads in varies ways."),
                  buttonBar: GFButtonBar(

                    children: <Widget>[
                      GFButton(
                        color: Colors.black,
                          text: 'Read More',
                          onPressed: (){
                            showModalBottomSheet(context: context,
                                builder: (context){
                                  return Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Text('How it spreads?'
                                        ,style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("\nThis virus spreads when someone comes"
                                          " into contact with an infected person’s secretions such as cough, sneeze or eve"
                                          "n shaking hands. \n \nThis virus can spread and be transmitted when someone touches anything a"
                                  "n infected person has touched, and then touching your mouth, nose, eyes, or even your body."),

                                    ],
                                  );
                                }
                            );
                          }
                      ),

                    ],
                  ),
                ),
              ] ),
        ),
      ),

    );
  }
}

