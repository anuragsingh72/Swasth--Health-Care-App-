import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:medicare/input_page.dart';


class Emerg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,

          title: Text("Emergency Helpline Number",
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
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
                              Image.asset("ambulance.png",
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
                                child: Text('Ambulance',),
                                  onPressed: (){
                                    launch('tel:+91 102');
                                  },),
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
                              Image.asset("mental-health.png",
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
                                child: Text('Mental-Health',),
                                onPressed: (){
                                  launch('tel:+91 18005990019');
                                },),
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
                              Image.asset("lifeguard.png",
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Suicide Helpline ',),
                                onPressed: (){
                                  launch('tel:+91 9152987821');
                                },),
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
                              Image.asset("emer-woman.png",
                                width: 90,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Women Helpine',),
                                onPressed: (){
                                  launch('tel:+91 1091');
                                },),
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
                              Image.asset("emer-covid.png",
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              FlatButton(
                                // splashColor: Colors.red,
                                color: Colors.white,
                                minWidth: double.infinity,
                                height: 40,
                                // textColor: Colors.white,
                                child: Text('Covid-19',),
                                onPressed: (){
                                  launch('tel:+91 9152987821');
                                },),
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
                              Image.asset("emer-police.png",
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
                                child: Text('Police',),
                                onPressed: (){
                                  launch('tel:+91 100');
                                },),
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