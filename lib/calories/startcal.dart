import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicare/input_page.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri cal = Uri.parse('https://cdn.shopify.com/s/files/1/0063/3818/3250/files/Screen-Shot-2014-01-22-at-2.36.13-PM-300x222_large.png?v=1582070231');
final Uri water = Uri.parse('https://www.eufic.org/en/images/uploads/healthy-living/water_article_water-intake-recommendation-en.png');
final Uri bal = Uri.parse('https://www.egginfo.co.uk/sites/default/files/2021-05/eatwell-guide-3-846.jpg');
final Uri daily = Uri.parse('https://www.eufic.org/images/uploads/healthy-living/A2.jpg');
final Uri _url = Uri.parse('https://www.aarogyasetu.gov.in/');


class Nutri extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Nutrition Requirement"),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 2.0),
              width: double.infinity,
              height: 130.0,
              child: Image.asset('nutri-background.jpg'
              ),
            ),
            SizedBox(
              height: 15,
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
                              Image.asset("nutri-calorie.png",
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
                                child: Text('Calories',),
                                onPressed: _calUrl),
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
                              Image.asset("nutri-balanced-diet.png",
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
                                child: Text('Balanced Diet',),
                                onPressed: _balUrl),
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
                              Image.asset("nutri-daily.png",
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
                                child: Text('Daily Requirement',),
                                onPressed: _dailyUrl),
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
                              Image.asset("nutri-water.png",
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
                                child: Text('Daily Water Requirement',),
                                onPressed: _waterUrl,),
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

void _dailyUrl() async {
  if (!await launchUrl(daily)) throw 'Could not launch $_url';
}
void _balUrl() async {
  if (!await launchUrl(bal)) throw 'Could not launch $_url';
}
void _waterUrl() async {
  if (!await launchUrl(water)) throw 'Could not launch $_url';
}
void _calUrl() async {
  if (!await launchUrl(cal)) throw 'Could not launch $_url';
}