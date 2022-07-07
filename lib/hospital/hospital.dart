import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:medicare/input_page.dart';

final Uri cardo = Uri.parse('https://www.google.com/maps/search/cardio+hospital/@30.3037136,78.0091788,13z/data=!3m1!4b1');
final Uri dermo = Uri.parse('https://www.google.com/maps/search/dermotology+hospital/@30.3199242,78.0604224,13z/data=!3m1!4b1');
final Uri psychia = Uri.parse('https://www.google.com/maps/search/psychiatric+hospital/@30.3037043,78.0091788,13z/data=!3m1!4b1');
final Uri gyno = Uri.parse('https://www.google.com/maps/search/gyno+hospital/@30.3036857,78.0091787,13z/data=!3m1!4b1');
final Uri eye = Uri.parse('https://www.google.com/maps/search/eye+hospital/@30.3199429,78.0604225,13z/data=!3m1!4b1');
final Uri dental = Uri.parse('https://www.google.com/maps/search/dental+hospital/@30.3199336,78.0604225,13z');
final Uri _url = Uri.parse('https://www.aarogyasetu.gov.in/');


class SearchHospital extends StatelessWidget {
  const SearchHospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('HOSPITAL',
            style: TextStyle(fontWeight: FontWeight.bold),)
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 2.0),
              width: double.infinity,
              height: 220.0,
              child: Image.asset('hos-search.png'
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
                              Image.asset("hos-eye.png",
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
                                child: Text('Eye Hospital',),
                                onPressed: _eyeUrl,
                              ),
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
                              Image.asset("hos-heart.png",
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
                                child: Text('Cardio Hospital',),
                                onPressed: _cardioUrl,
                              ),
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
                              Image.asset("hos-den.png",
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
                                child: Text('Dental Hospital',),
                                onPressed: _dentalUrl,
                              ),
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
                              Image.asset("hos-gyno.png",
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
                                child: Text('Gyno ',),
                                onPressed: _gynoUrl ,
                              ),
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
                              Image.asset("hos-dermo.png",
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
                                child: Text('Dermotologist',),
                                onPressed: _dermoUrl),
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
                              Image.asset("hos-psychiatry.png",
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
                                child: Text('Psychiatry',),
                                onPressed: _psychiaUrl,
                              ),
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
void _dentalUrl() async {
  if (!await launchUrl(dental)) throw 'Could not launch $_url';
}
void _gynoUrl() async {
  if (!await launchUrl(gyno)) throw 'Could not launch $_url';
}
void _dermoUrl() async {
  if (!await launchUrl(dermo)) throw 'Could not launch $_url';
}
void _eyeUrl() async {
  if (!await launchUrl(eye)) throw 'Could not launch $_url';
}
void _cardioUrl() async {
  if (!await launchUrl(cardo)) throw 'Could not launch $_url';
}
void _psychiaUrl() async {
  if (!await launchUrl(psychia)) throw 'Could not launch $_url';
}
