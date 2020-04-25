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
        title: Text('What can you do to stay safe?'),
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
                    title: Text('Washing hands', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "Washing hands is a great way to be safe"),
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
                                      Text('Washing hands'
                                        ,style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(""),
                                      Text('This Virus spread from surfaces to people when we touch a surface and then touch '
                                          'our face, nose, or eyes'
                                        ,style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, fontWeight: FontWeight.normal, decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Text(""),
                                      Text('Steps: \n',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                      Text('1. Wet your hands with clean water and apply enough soap. \n2. Rub your hands to palm in a circular motion'
                                          '\n3. wash back of your fingers and your thubm \n4. scrub your hands for at least 25 seconds\n 5. Rinse hands with clean water. \n'
                                          '6. Dry throughly with clean towel',style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, decoration: TextDecoration.none,
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
                    title: Text('Social Distancing', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "The main and the best way to reduce the spread of this virus"),
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
                                      Text('Social Distancing'
                                        ,style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(""),
                                      Text('There is no vaccine discovered to kill this virus yet but, social '
                                          'distancin is the best way as a precaution measure that you should consider \n'
                                        ,style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, fontWeight: FontWeight.normal, decoration: TextDecoration.none,
                                        ),
                                      ),
                                      Text('\n * You may reduce the chance of getting this virus but avoiding people who '
                                          'are sick.\n* Self distancing. \n* Avoid touching your face, nose, eyes, and mouth. \n* If you are sick, do not leave the house '
                                          'and stay away from your family. Call your doctor/health care should there be any symptoms mentioned above.',style: TextStyle(fontFamily: 'Montserrat', fontSize: 15, decoration: TextDecoration.none,
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
                    title: Text('Clean and Disinfect', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "Clean frequently any touched objects/surfaces using a "
                      "household cleaning spray or wipe."),
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
                                      Text('This virus is new to us and there is no treatment for it yet, but remember people in the past fought against viruses like '
                                          'the Corona virus without any of the tools, education, or the machines that are available to us today.'
                                        ,style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text("\n Everyone has his/her own way of cleaning, but remember that you have to disinfect any serface that might be touched for example"
                                          "tables, doornobs, lightseitches, handles, desks, toilets, faucets, sinks, etc. \n \n"
                                          " "),
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
                    title: Text('Cover your coughs nad sneezes', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  content:Text( "Use a tissue to cover your coughs and sneezes then dipose it in the trash"),
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
                                      Text('Remember that this virus can spread if someone coughs/sneezes near you.'
                                        ,style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      Text("\n* Cover your mouth and nose with a tissue or with your elbow when sneezing or coughing.\n*"
                                          "Throw any used tissues in the trash.\n* Wash your hands with soap and water for no less than 20 seconeds"
                                          "(sing Happy birthday twice while washing your hands \n \n  Treat everyone as if they were sick, follow the "
                                          "precautions measures mentioned above and STAY SAFE!"
                                          " "),
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

