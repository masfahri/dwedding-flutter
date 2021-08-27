import 'package:dwedding/views/components/acara_akad.dart';
import 'package:dwedding/views/components/acara_resepsi.dart';
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
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Digital Wedding',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "assets/themes/flowerside/background.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Image.network(
                      "https://inv.simanten.com/images/library/line1.png",
                      fit: BoxFit.contain,
                      width: 100,
                    ),
                  ),
                  Text(
                    "Rangkaian Acara",
                    style: TextStyle(
                        fontFamily: "Playball",
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Image.network(
                      "https://inv.simanten.com/images/library/line1.png",
                      fit: BoxFit.contain,
                      width: 100,
                    ),
                  ),
                  SizedBox(height: 90),
                ],
              ),
              Column(
                children: [
                  Card(
                    color: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: <Widget>[AcaraResepsi()],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        children: <Widget>[AcaraAkad()],
                      ),
                    ),
                  ),
                ],
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
            ]),
          ),
        ));
  }
}
