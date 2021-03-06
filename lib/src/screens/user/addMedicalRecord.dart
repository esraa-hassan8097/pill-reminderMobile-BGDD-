import 'package:flutter/material.dart';
import 'package:medicine_reminder/src/screens/homepage/homepage.dart';

class Addmedrecord extends StatefulWidget {
  @override
  _AddmedrecordState createState() => _AddmedrecordState();
}

class _AddmedrecordState extends State<Addmedrecord> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(
            color: Colors.purple,
          ),
          centerTitle: true,
          title: Text(
            "Add your medical records",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          elevation: 0.0,
        ),
        body: ListView(children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
              Widget>[
            Container(
                padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter bloodSugar rate here";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Blood sugar rate',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter blood pressure here";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Blood pressure ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                          obscureText: true,
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your weight here";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Weight ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your height here";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'height ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your heart rate here";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Heart Rate ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return "Please enter your respiratory rate here";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: 'Respiratory Rate ',
                              labelStyle: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.purple))),
                        ),
                        SizedBox(height: 50.0),
                        Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.purpleAccent,
                              color: Colors.purple,
                              elevation: 7.0,
                              child: GestureDetector(
                                onTap: () {
                                  if (_formKey.currentState.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => HomePage()));
                                  }
                                },
                                child: Center(
                                  child: Text(
                                    'ADD medical records',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat'),
                                  ),
                                ),
                              ),
                            )),
                        SizedBox(height: 20.0),
                        Container(
                          height: 40.0,
                          color: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 1.0),
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Center(
                                child: Text('Cancel',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Montserrat')),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
          ])
        ]));
  }
}
