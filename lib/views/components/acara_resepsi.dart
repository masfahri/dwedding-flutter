import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'dart:math' as math;

import 'package:flutter_countdown_timer/index.dart';

class AcaraResepsi extends StatelessWidget {
  const AcaraResepsi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          "https://inv.simanten.com/images/library/line1.png",
          fit: BoxFit.contain,
          width: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotationTransition(
              turns: new AlwaysStoppedAnimation(90 / 360),
              child: Image.network(
                "https://inv.simanten.com/images/library/line1.png",
                fit: BoxFit.contain,
                width: 20,
              ),
            ),
            Text(
              "Acara Resepsi",
              style: TextStyle(
                  fontFamily: "Playball",
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            RotationTransition(
              turns: new AlwaysStoppedAnimation(90 / 360),
              child: Image.network(
                "https://inv.simanten.com/images/library/line1.png",
                fit: BoxFit.contain,
                width: 20,
              ),
            ),
          ],
        ),
        Image.network(
          "https://inv.simanten.com/images/library/line1.png",
          fit: BoxFit.contain,
          width: 100,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          margin: EdgeInsets.only(left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Juni",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "JosefinSlab", fontSize: 20),
                    ),
                    Text(
                      "2021",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "JosefinSlab", fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent),
                  shape: BoxShape.circle,
                ),
                child: Text(
                  "21",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sabtu",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "JosefinSlab", fontSize: 20),
                    ),
                    Text(
                      "11:00 - 14:00",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "JosefinSlab", fontSize: 20),
                    ),
                    Text(
                      "WIB",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: "JosefinSlab", fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Villa 27 Ciawi Jl. Raya Pertanian No.27, Bendungan, Kec. Ciawi Bogor, Jawa Barat",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "JosefinSlab", fontSize: 20),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Center(
          child: Column(
            children: [
              Center(
                child: CountdownTimer(
                  endTime:
                      DateTime(2021, 10, 22, 12, 48, 00).millisecondsSinceEpoch,
                  widgetBuilder: (_, CurrentRemainingTime? time) {
                    if (time == null) {
                      return Text('Game over');
                    }
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Hari",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("${time.days}")
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Jam",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("${time.hours}")
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Menit",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("${time.min}")
                            ],
                          ),
                        ),
                        Container(
                          width: 50,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Detik",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text("${time.sec}")
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
