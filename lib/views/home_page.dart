import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatelessWidget {
  final String apiUrl =
      "https://bx.shrtl.site/apis/api/undangan/sampul?domain=fajar-tika";
  Future<dynamic> _fecthDataMempelai() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['data'];
  }

  onFinishedAnimate(String text) {
    Text(text,
        style: TextStyle(
            fontFamily: 'Just', fontSize: 20, fontWeight: FontWeight.w900));
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.display1;
    final String? bgFlower =
        "https://u.digital.wedding/assets/themes/blueroses/img/bg-flower.png";

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.lightBlueAccent[700],
        child: FutureBuilder<dynamic>(
          future: _fecthDataMempelai(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://inv.simanten.com/images/cover/0848-2184_cov.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      color: Colors.black26,
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 10),
                      width: 1000,
                      child: Center(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(height: 10),
                              AnimatedTextKit(
                                animatedTexts: [
                                  RotateAnimatedText(
                                    snapshot.data['flag'] == 'resepsi'
                                        ? '- The Wedding Of -'.toUpperCase()
                                        : '- The Engagement Of -'.toUpperCase(),
                                    textStyle: TextStyle(
                                        fontFamily: 'Just',
                                        fontSize: 20,
                                        color: Colors.lightBlue[50],
                                        fontWeight: FontWeight.w900),
                                    rotateOut: false,
                                  ),
                                ],
                                totalRepeatCount: 1,
                              ),
                              SizedBox(height: 10),
                              Container(
                                child: Wrap(
                                  direction: Axis
                                      .horizontal, // main axis (rows or columns)
                                  children: <Widget>[
                                    Center(
                                      child: AnimatedTextKit(
                                        animatedTexts: [
                                          RotateAnimatedText(
                                            snapshot.data['nama_pria'] +
                                                '\n' +
                                                '&' +
                                                '\n' +
                                                snapshot.data['nama_wanita'],
                                            textStyle: TextStyle(
                                                fontFamily: 'Playball',
                                                fontSize: 30,
                                                color: Colors.lightBlue[50],
                                                fontWeight: FontWeight.w900),
                                            textAlign: TextAlign.center,
                                            rotateOut: false,
                                          ),
                                        ],
                                        totalRepeatCount: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AnimatedContainer(
                                duration: Duration(seconds: 10000),
                                curve: Curves.bounceIn,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
            } else {
              return Center(
                  child: CircularProgressIndicator(
                color: Colors.white54,
              ));
            }
          },
        ),
      ),
    );
  }
}
