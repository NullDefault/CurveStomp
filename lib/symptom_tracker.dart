import 'package:animated_background/animated_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:numberpicker/numberpicker.dart';

class SymptomTracker extends StatefulWidget {
  @override
  SymptomTrackerState createState() => SymptomTrackerState();
}

class SymptomTrackerState extends State<SymptomTracker>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          backgroundColor: Colors.tealAccent[400],
          leading: GFIconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            type: GFButtonType.transparent,
          ),
          title: Text(
            "Symptoms Quiz",
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          actions: <Widget>[
            GFIconButton(
              icon: Icon(
                Icons.healing,
                color: Colors.blue,
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
            children: <Widget>[
              GFCard(
                color: Colors.lightBlueAccent[100],
                title: GFListTile(
                  title: Text(
                    "Are you currently experiencing any of the following symptoms:"
                        "\n Strong chest pain"
                        "\n Severe difficulty breathing"
                        "\n Lightheadedness"
                        "\n Serious Disorientation",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),),
                  icon: Icon(Icons.new_releases, color: Colors.red),
                ),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GFButton(
                        icon: Icon(Icons.check_circle),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  color: Colors.redAccent[100],
                                  child: Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.ring_volume,
                                            color: Colors.red),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "If you are currently experiencing any of the aforementioned symptoms, you should immediately seek help."
                                              "\nContact the appropriate authorities or call 911, depending on your circumstance.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }
                          );
                        },
                        color: Colors.red,
                        text: "Yes"
                    ),
                    SizedBox(width: 10),
                    GFButton(
                        icon: Icon(Icons.cancel),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => SymptomTracker_mainQuiz()));
                        },
                        color: Colors.green,
                        text: "No"
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

class SymptomTracker_mainQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SymptomTracker_mainQuizState();
}

class SymptomTracker_mainQuizState extends State<SymptomTracker_mainQuiz>
    with TickerProviderStateMixin {

  int _userAge = 18;
  Map<String, bool> symptoms = {
    'Fever, chills, or sweating': false,
    'Difficulty breathing (mild)': false,
    'Dry cough': false,
    'Sore throat': false,
    'Body aches': false,
    'Vomiting or diarrhea': false,
  };
  Map<String, bool> conditions = {
    "Asthma or chronic lung disease": false,
    "Cancer": false,
    "Immune system deficiency or HIV": false,
    "Serious heart conditions": false,
    "Diabetes": false,
    "Kidney failure": false,
    "Extreme obesity": false,
    "Pregnancy": false,
    "Anxiety disorder or OCD": false,
  };
  bool _travelRisk = false;
  bool _exposureRisk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          backgroundColor: Colors.tealAccent[400],
          leading: GFIconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            type: GFButtonType.transparent,
          ),
          title: Text(
            "Symptoms Quiz Part Two",
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          actions: <Widget>[
            GFIconButton(
              icon: Icon(
                Icons.healing,
                color: Colors.blue,
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
            children: <Widget>[
              GFCard( //age
                color: Colors.cyanAccent[100],
                content: Row(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Pick your age", style: TextStyle(color: Colors.blue, fontSize: 22)),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        NumberPicker.integer(initialValue: 18,
                            minValue: 6, maxValue: 99,
                            onChanged: (newValue) => setState(() => _userAge = newValue)
                        ),
                        new Text("Age picked: $_userAge")
                      ],
                    ),
                  ],
                )
              ),
              GFCard( //symptoms
                color: Colors.cyanAccent[100],
                title: GFListTile(
                  title: Text("Please select all the symptoms you are currently experiencing.", style: TextStyle(fontSize: 18, color: Colors.black),),
                ),
                content: Column(
                  children: symptoms.keys.map((String key) {
                    return new CheckboxListTile(
                      title: new Text(key, style: TextStyle(color: Colors.blue, fontSize: 18)),
                      value: symptoms[key],
                      onChanged: (bool value) {
                        setState(() {
                          symptoms[key] = value;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
              GFCard( // health conditions
                color: Colors.cyanAccent[100],
                title: GFListTile(
                  title: Text("Please indicate if you have of the given conditions.", style: TextStyle(fontSize: 18, color: Colors.black),),
                ),
                content: Column(
                  children: conditions.keys.map((String key) {
                    return new CheckboxListTile(
                      title: new Text(key, style: TextStyle(color: Colors.blue, fontSize: 18)),
                      value: conditions[key],
                      onChanged: (bool value) {
                        setState(() {
                          conditions[key] = value;
                        });
                      },
                    );
                  }).toList(),
                ),
              ),
              GFCard( //recent travel
                color: Colors.cyanAccent[100],
                title: GFListTile(
                  title: Text("Have you recently travelled to a high risk area (international or domestic)?", style: TextStyle(fontSize: 18, color: Colors.blue)),
                ),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Yes", style: TextStyle(color: Colors.green)),
                        Checkbox(
                          value: _travelRisk,
                          checkColor: Colors.green,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _travelRisk = !_travelRisk;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("No", style: TextStyle(color: Colors.red)),
                        Checkbox(
                          value: !_travelRisk,
                          checkColor: Colors.red,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _travelRisk = !_travelRisk;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GFCard( //confirmed exposures
                color: Colors.cyanAccent[100],
                title: GFListTile(
                  title: Text("Have you had any confirmed exposures to a COVID-19 patient in the last 14 days?", style: TextStyle(fontSize: 18, color: Colors.blue)),
                ),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Yes", style: TextStyle(color: Colors.green)),
                        Checkbox(
                          value: _exposureRisk,
                          checkColor: Colors.green,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _exposureRisk = !_exposureRisk;
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("No", style: TextStyle(color: Colors.red)),
                        Checkbox(
                          value: !_exposureRisk,
                          checkColor: Colors.red,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _exposureRisk = !_exposureRisk;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  width: 100,
                  height: 50,
                  child: GFIconButton(
                    icon: Icon(Icons.check),
                    tooltip: "Submit",
                    onPressed: () {
                      _submitQuiz();
                    },
                  )),
            ],
          ),
        )
    );
  }

  void _submitQuiz(){
    Navigator.pop(context);
    Navigator.pop(context);
  }
}