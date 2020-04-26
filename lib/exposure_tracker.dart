import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:animated_background/animated_background.dart';

class ExposureTracker extends StatefulWidget {
  @override
  ExposureTrackerState createState() => ExposureTrackerState();
}

class ExposureTrackerState extends State<ExposureTracker>
    with TickerProviderStateMixin {
  String _dormSelection;
  String _dhSelection;
  TextEditingController _classCodes;
  TextEditingController _frequentlyVisitedSpaces;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: GFAppBar(
        backgroundColor: Colors.lightBlueAccent,
        leading: GFIconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.tealAccent,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          type: GFButtonType.transparent,
        ),
        title: Text(
          "Exposure Questionnaire",
          style: TextStyle(fontSize: 16, color: Colors.tealAccent),
        ),
        actions: <Widget>[
          GFIconButton(
            icon: Icon(
              Icons.record_voice_over,
              color: Colors.tealAccent,
            ),
            onPressed: null,
            type: GFButtonType.transparent,
          ),
        ],
      ),
      backgroundColor: Colors.tealAccent[400],
      body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(),
          vsync: this,
          child: ListView(
            children: <Widget>[
              GFCard(
                content: Container(
                  width: 200,
                  height: 100,
                  child: Text(
                    "By completing this survey you will help your local community control the potential spread of new Covid-19 infections."
                    "\nYour respones will be made anonymous.",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GFCard(
                content: Container(
                    width: 200,
                    height: 80,
                    child: Column(
                      children: <Widget>[
                        Text("Select the dorm you live in."),
                        DropdownButton<String>(
                          icon: Icon(Icons.domain),
                          value: _dormSelection,
                          items: <String>[
                            'Dorm_A',
                            'Dorm_B',
                            'Dorm_C',
                            'Dorm_D'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            _handleDormSelection(value);
                          },
                        ),
                      ],
                    )),
              ),
              GFCard(
                content: Container(
                    width: 200,
                    height: 80,
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Pick the dining hall you use most frequently.",
                          textAlign: TextAlign.center,
                        ),
                        DropdownButton<String>(
                          icon: Icon(Icons.fastfood),
                          value: _dhSelection,
                          items: <String>[
                            'Dining Hall A',
                            'Dining Hall B',
                            'Dining Hall C',
                            'Dining Hall D'
                          ].map((String value) {
                            return new DropdownMenuItem<String>(
                              value: value,
                              child: new Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            _handleDHallSelection(value);
                          },
                        ),
                      ],
                    )),
              ),
              GFCard(
                content: Container(
                    width: 200,
                    height: 200,
                    child: Column(
                      children: <Widget>[
                        Text(
                            "Specify the course codes for the classes you are currently enrolled in, separated by commas."
                                "\n For example: CSCI_370, MATH_220, PHIL_119, CSCI_300",
                            textAlign: TextAlign.center),
                        SizedBox(height: 20),
                        TextField(
                          controller: _classCodes,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter class codes here.'),
                        )
                      ],
                    )),
              ),
              GFCard(
                content: Container(
                    width: 200,
                    height: 150,
                    child: Column(
                      children: <Widget>[
                        Text(
                            "Specify any additional public spaces you frequently use here.",
                            textAlign: TextAlign.center),
                        SizedBox(height: 20),
                        TextField(
                          controller: _frequentlyVisitedSpaces,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Provide your answer here'),
                        )
                      ],
                    )),
              ),
              Container(
                  width: 100,
                  height: 50,
                  child: GFIconButton(
                    icon: Icon(Icons.check),
                    tooltip: "Submit",
                    onPressed: () {
                      _submitQuestionnaire();
                    },
                  )),
            ],
          )),
    );
  }

  void _handleDormSelection(String newVal) {
    setState(() {
      _dormSelection = newVal;
    });
  }

  void _handleDHallSelection(String newVal) {
    setState(() {
      _dhSelection = newVal;
    });
  }

  void _submitQuestionnaire(){

  }
}
