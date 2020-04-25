import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';
import 'Guidelines/COVIDTesting.dart';
import 'Guidelines/aboutCovid19.dart';
import 'Guidelines/otherGuidelines.dart';
import 'Guidelines/whatToDoToAvoid.dart';


class GeneralGuidelines extends StatelessWidget {
  GeneralGuidelines({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('General Guidlines'),
      ),
      body: ListView(
          padding: new EdgeInsets.only(left: 2, right: 2, bottom: 2),
            children: <Widget>[
          GFCard(
            color: Colors.grey ,
            title: GFListTile(
                title: Text('About COVID-19', style: TextStyle(fontWeight: FontWeight.bold),),
                icon: GFIconButton(
                  onPressed: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => aboutCOVID19())); },                 icon: Icon(Icons.arrow_forward),
                )
            ),
            content:Text( "Information about the Virus and its Symptems"),
          ),
              GFCard(
                boxFit: BoxFit.cover,
                color: Colors.grey ,
                title: GFListTile(
                    title: Text('How can you prevent it?', style: TextStyle(fontWeight: FontWeight.bold),),
                    icon: GFIconButton(
                      onPressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => whatToDo())); },                    icon: Icon(Icons.arrow_forward),
                    )
                ),
                content:Text( "Information about social distancing, isloations, etc"),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                color: Colors.grey ,
                title: GFListTile(
                    title: Text('What you need to know about COVID-19 testing?', style: TextStyle(fontWeight: FontWeight.bold),),
                    icon: GFIconButton(
                      onPressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => testing())); },                    icon: Icon(Icons.arrow_forward),
                      //type: GFType.transparent,
                    )
                ),
                content:Text( "Guidence on where to get texted and who should be tested"),
              ),
              GFCard(
                boxFit: BoxFit.cover,
                color: Colors.grey ,
                title: GFListTile(
                    title: Text('Other guidelines that you should consider', style: TextStyle(fontWeight: FontWeight.bold),),
                    icon: GFIconButton(
                      onPressed: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) => otherGuidelines())); },                    icon: Icon(Icons.arrow_forward),
                      //type: GFType.transparent,
                    )
                ),
                content:Text( "Care for your body, shopping, work strategy, etc"),

              ),

            ]
       // ),
      ),);

  }
}
//