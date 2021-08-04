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
                color: Colors.lightBlueAccent[700],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        snapshot.data['flag'] == 'resepsi'
                            ? '- The Wedding Of -'.toUpperCase()
                            : '- The Engagement Of -'.toUpperCase(),
                        style: TextStyle(
                            fontFamily: 'Just',
                            fontSize: 50,
                            fontWeight: FontWeight.w900),
                      ),
                      Container(
                        child: Wrap(
                          spacing: 8.0, // gap between adjacent chips
                          runSpacing: 4.0, // gap between lines
                          direction:
                              Axis.horizontal, // main axis (rows or columns)
                          children: <Widget>[
                            Center(
                              child: Text(
                                  snapshot.data['nama_pria'].toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: 'Just',
                                      fontSize: 50,
                                      fontWeight: FontWeight.w900)),
                            ),
                            Center(
                              child: Text(" & ",
                                  style: TextStyle(
                                      fontFamily: 'Just',
                                      fontSize: 40,
                                      fontWeight: FontWeight.w900)),
                            ),
                            Center(
                              child: Text(
                                  snapshot.data['nama_wanita'].toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: 'Just',
                                      fontSize: 50,
                                      fontWeight: FontWeight.w900)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        padding: new EdgeInsets.only(top: 5.0),
                                        alignment: Alignment.center,
                                        child: CircleAvatar(
                                            radius: 100,
                                            backgroundImage: NetworkImage(
                                                'https://u.digital.wedding/assets/users/' +
                                                    snapshot.data['kunci'] +
                                                    '/kita.png')),
                                      ),
                                      // Container(
                                      //     color: Colors.transparent,
                                      //     alignment: Alignment.center,
                                      //     child: CircleAvatar(
                                      //         radius: (52),
                                      //         backgroundColor: Colors.white,
                                      //         child: ClipRRect(
                                      //           borderRadius:
                                      //               BorderRadius.circular(50),
                                      //           child: Image.asset(
                                      //               "https://u.digital.wedding/assets/themes/blueroses/img/bg-flower.png"),
                                      //         ))),
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
              );
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
