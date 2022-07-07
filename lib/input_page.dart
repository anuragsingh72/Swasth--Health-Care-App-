import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicare/doctorpage.dart';
import 'package:medicare/emergency/emergency.dart';
import 'package:medicare/medicine/medicine.dart';
import 'bmical/startbmi.dart';
import 'calories/startcal.dart';
import 'emergency/emergency.dart';
import 'disease/diseases.dart';
import 'arogya Setu/arogyasetu.dart';
import 'hospital/hospital.dart';
import 'medicine/medicine.dart';

const inactive = Colors.white;
const active = Colors.white;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SWASTH",
          style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 30,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateC(1);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("arogya.png",
                            width: 100,
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Arogya Setu ',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Asetu(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //  updateC(2);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("medicalteam.png",
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Doctor',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyApp(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateC(1);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("hospital.png",
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Hospital'),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchHospital(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //  updateC(2);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("diseases.png",
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Diseases and Symptoms',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => disease(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateC(1);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("emergency-call.png",
                              width: 65,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Emergency',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Emerg(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //  updateC(2);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("bmi.png",
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('BMI',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => bmi(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //updateC(1);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("diet.png",
                              width: 90,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Calories ',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Nutri(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //  updateC(2);
                      });
                    },
                    child: ReusableCard(
                      colour: Colors.white,
                      cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("med-trolley.png",
                              width: 80,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            FlatButton(
                              // splashColor: Colors.red,
                              color: Colors.white,
                              minWidth: double.infinity,
                              height: 40,
                              // textColor: Colors.white,
                              child: Text('Medicine',),
                              onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Med(),
                                ),
                              ),),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild});
  Color? colour;
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
