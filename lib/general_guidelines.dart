import 'package:animated_background/animated_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/getflutter.dart';

import 'Guidelines/COVIDTesting.dart';
import 'Guidelines/aboutCovid19.dart';
import 'Guidelines/otherGuidelines.dart';
import 'Guidelines/whatToDoToAvoid.dart';

class GeneralGuidelines extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeneralGuidelinesState();
}

class GeneralGuidelinesState extends State<GeneralGuidelines>
    with TickerProviderStateMixin {
  Widget guidelineCard(String titleText, String infoText, targetPage) {
    return GFCard(
      color: Colors.white70,
      title: GFListTile(
          title: Text(
            titleText,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.blue),
          ),
          icon: GFIconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => targetPage));
            },
            icon: Icon(Icons.arrow_forward),
          )),
      content: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(infoText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: GFAppBar(
          backgroundColor: Colors.teal,
          leading: GFIconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.lightBlueAccent,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            type: GFButtonType.transparent,
          ),
          title: Text(
            "General Guidelines & Info",
            style: TextStyle(fontSize: 16, color: Colors.tealAccent),
          ),
          actions: <Widget>[
            GFIconButton(
              icon: Icon(
                Icons.spa,
                color: Colors.tealAccent,
              ),
              onPressed: null,
              type: GFButtonType.transparent,
            ),
          ],
        ),
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(),
          vsync: this,
          child: ListView(
              padding: new EdgeInsets.only(left: 2, right: 2, bottom: 2),
              children: <Widget>[
                guidelineCard(
                    'About COVID-19',
                    'Information about the Virus and its Symptoms.',
                    new AboutCovid19()),
                guidelineCard(
                    'How can you help prevent it?',
                    'Information about social distancing, quarantine, etc.',
                    new whatToDo()),
                guidelineCard(
                    'Information about COVID-19 testing',
                    'Guidance on where to get tested and who should be tested.',
                    new CovidTesting()),
                guidelineCard(
                    'Other guidelines you should consider',
                    'Caring for your body, grocery shopping, work strategy and others.',
                    new otherInformation())
              ]),
        ));
  }
}
