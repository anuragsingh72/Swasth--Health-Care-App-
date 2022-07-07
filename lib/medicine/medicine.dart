import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:medicare/input_page.dart';

//url for medicine
final Uri netmeds = Uri.parse('https://www.netmeds.com');
final Uri practo = Uri.parse('https://www.practo.com/');
final Uri mg1 = Uri.parse('https://www.1mg.com/');
final Uri pharmeasy = Uri.parse('https://pharmeasy.in');


class Med extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Medicine",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 2.0),
              width: double.infinity,
              height: 230.0,
              child: Image.asset('med-onlineorder.jpg'
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
                              Image.asset("med-netmeds.jpg",
                                width: 180,
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
                                child: Text('NetMeds',),
                                onPressed: _netmedsUrl,),
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
                              Image.asset("med-1mg.png",
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
                                child: Text('1MG',),
                                onPressed: _1mgUrl,),
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
                              Image.asset("med-practo.png",
                                width: 200,
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
                                child: Text('Practo ',),
                                onPressed: _practoUrl ,),
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
                              Image.asset("med-pharmeasy.png",
                                width: 120,
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
                                child: Text('Pharmeasy',),
                                onPressed: _pharmeasyUrl ),
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
void _netmedsUrl() async {
  if (!await launchUrl(netmeds)) throw 'Could not launch $netmeds';
}
void _1mgUrl() async {
  if (!await launchUrl(mg1)) throw 'Could not launch $mg1';
}
void _practoUrl() async {
  if (!await launchUrl(practo)) throw 'Could not launch $practo';
}
void _pharmeasyUrl() async {
  if (!await launchUrl(pharmeasy)) throw 'Could not launch $pharmeasy';
}