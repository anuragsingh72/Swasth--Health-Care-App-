import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:medicare/doctorpage.dart';
import 'package:medicare/input_page.dart';


class disease extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Diseases And Symptoms"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 2.0),
              width: double.infinity,
              height: 200.0,
              child: Image.asset('sym.png'
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Common Diseases",

            style: TextStyle(fontSize: 20 ,
            fontWeight: FontWeight.bold,
              backgroundColor: Colors.purpleAccent[100],

            ) ,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: ReusableCard(
                        colour: Colors.white,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("cough.png",
                                width: 80,
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Cough',),
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: ReusableCard(
                        colour: Colors.white,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("dis-acidity.png",
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
                                child: Text('Acidity',),
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: ReusableCard(
                        colour: Colors.white,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("dis-cold.png",
                                width: 80,
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Cold',),
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
                      },
                      child: ReusableCard(
                        colour: Colors.white,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("dis-malaria.png",
                                width: 80,
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Maleria ',),
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: ReusableCard(
                        colour: Colors.white,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("dis-typhoid.png",
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
                                child: Text('Typhoid',),
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                      },
                      child: ReusableCard(
                        colour: Colors.white,
                        cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("dis-vomit.png",
                                width: 100,
                              ),
                              SizedBox(
                                height: 0,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Vomiting',),
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
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 45.0,
              child: RaisedButton(
                child: Image.asset("back-button.png"),
                color: Colors.lightBlueAccent,

                elevation: 0.0,
                splashColor: Colors.blueGrey,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InputPage(),
                  ),
                ),
              ),
            ),
          ],
        ),
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