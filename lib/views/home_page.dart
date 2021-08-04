import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatelessWidget {
  final String apiUrl =
      "http://dwedding-api-ci3.test/api/undangan/sampul?domain=fajar-tika";
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
                                "https://i.pinimg.com/736x/ee/99/47/ee9947bc2f52b7ee300ee721c8910f0a.jpg"),
                            fit: BoxFit.cover)),
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
                                        TypewriterAnimatedText(
                                          snapshot.data['nama_pria']
                                                  .toUpperCase() +
                                              '\n' +
                                              '&' +
                                              '\n' +
                                              snapshot.data['nama_wanita']
                                                  .toUpperCase(),
                                          textStyle: TextStyle(
                                              fontFamily: 'Just',
                                              fontSize: 50,
                                              fontWeight: FontWeight.w900),
                                          speed:
                                              const Duration(milliseconds: 100),
                                          textAlign: TextAlign.center,
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
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        Stack(
                                          alignment: Alignment.center,
                                          children: <Widget>[
                                            Positioned(
                                              child: Container(
                                                alignment: Alignment.center,
                                                child: CircleAvatar(
                                                  radius: 100.0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: NetworkImage(
                                                      'https://u.digital.wedding/assets/users/' +
                                                          snapshot
                                                              .data['kunci'] +
                                                          '/kita.png'),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(30.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(90),
                                                child: CircleAvatar(
                                                  radius: (120),
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  child: ClipRRect(
                                                    child: Image.network(
                                                      bgFlower.toString(),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
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
