import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

class AcaraPage extends StatefulWidget {
  const AcaraPage({Key? key}) : super(key: key);

  @override
  _AcaraPageState createState() => _AcaraPageState();
}

class _AcaraPageState extends State<AcaraPage> {
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Text(
            "ACARA",
            style: TextStyle(
                fontFamily: "Just", fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                children: <Widget>[
                  Text("Acara AKAD",
                      style: TextStyle(
                          fontFamily: "Just",
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(4),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(4),
                      },
                      defaultColumnWidth: FixedColumnWidth(1000.0),
                      border: TableBorder.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        TableRow(children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Tanggal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Just",
                                        fontSize: 20))
                              ]),
                          Column(children: [
                            Text(':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text('07-08-2021',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('Jam',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text(':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text('09:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('Tempat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text(':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: <Widget>[
                            Text(
                              'Mempelai Wanita Jl. Cimelati 1 No 18 RT 10/04 Kel. Suradita Kec. Cisauk Kab-Tangerang',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Just",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                          ]),
                        ]),
                      ],
                    ),
                  ),
                  TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blue.withOpacity(0.04);
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed))
                              return Colors.blue.withOpacity(0.12);
                            return Colors.black;
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Arahkan ke Acara')),
                  Center(
                    child: Column(
                      children: [
                        CountdownTimer(
                          endTime: DateTime(2021, 10, 22, 12, 48, 00)
                              .millisecondsSinceEpoch,
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.pink),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                children: <Widget>[
                  Text("Acara AKAD",
                      style: TextStyle(
                          fontFamily: "Just",
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Table(
                      columnWidths: {
                        0: FlexColumnWidth(4),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(4),
                      },
                      defaultColumnWidth: FixedColumnWidth(1000.0),
                      border: TableBorder.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 2),
                      children: [
                        TableRow(children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Tanggal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Just",
                                        fontSize: 20))
                              ]),
                          Column(children: [
                            Text(':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text('07-08-2021',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('Jam',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text(':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text('09:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                        ]),
                        TableRow(children: [
                          Column(children: [
                            Text('Tempat',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: [
                            Text(':',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Just",
                                    fontSize: 20))
                          ]),
                          Column(children: <Widget>[
                            Text(
                              'Mempelai Wanita Jl. Cimelati 1 No 18 RT 10/04 Kel. Suradita Kec. Cisauk Kab-Tangerang',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: "Just",
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                          ]),
                        ]),
                      ],
                    ),
                  ),
                  TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blue.withOpacity(0.04);
                            if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed))
                              return Colors.blue.withOpacity(0.12);
                            return Colors.black;
                          },
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Arahkan ke Acara')),
                  Center(
                    child: Column(
                      children: [
                        CountdownTimer(
                          endTime: DateTime(2021, 10, 22, 12, 48, 00)
                              .millisecondsSinceEpoch,
                          textStyle:
                              TextStyle(fontSize: 30, color: Colors.pink),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [],
              ),
            ),
          ),
        ])));
  }
}
