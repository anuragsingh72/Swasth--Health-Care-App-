import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:medicare/input_page.dart';

final Uri _url = Uri.parse('https://www.aarogyasetu.gov.in/');

class Asetu extends StatelessWidget {
  const Asetu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 2.0),
              width: double.infinity,
              height: 320.0,
              child: Image.asset('arogya-back.jpg'
              ),
            ),
            Container(
              color: Colors.white60,
              width: double.infinity,
              height: 45.0,
              child: RaisedButton(
                child: Text('Visit Arogya Setu Site',
                  style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20),
                ),
                color: Colors.white,

                elevation: 0.0,
                splashColor: Colors.blueGrey,
                onPressed: _launchUrl,
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 280.0,
              child: Image.asset('arogya-down.jpg'
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

void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}

