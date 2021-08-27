import 'package:dwedding/main.dart';
import 'package:dwedding/models/Mempelai.dart';
import 'package:dwedding/views/acara_page.dart';
import 'package:dwedding/views/card_page.dart';
import 'package:dwedding/views/cerita_page.dart';
import 'package:dwedding/views/galery_page.dart';
import 'package:dwedding/views/home_page.dart';
import 'package:dwedding/views/mempelai_page.dart';
import 'package:dwedding/views/rsvp_page.dart';
import 'package:dwedding/views/splashscreen_page.dart';
import 'package:mobile_web_view/mobile_web_view.dart';

import 'package:dwedding/views/ucapan_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TabbedAppBarDemoFull extends StatefulWidget {
  String domain;
  TabbedAppBarDemoFull({Key? key, required this.domain}) : super(key: key);

  @override
  _TabbedAppBarDemoFullState createState() => _TabbedAppBarDemoFullState();
}

class _TabbedAppBarDemoFullState extends State<TabbedAppBarDemoFull> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          body: TabBarView(children: <Widget>[
            HomePage(), // Sampul
            MempelaiPage(), // Mempelai
            AcaraPage(), // Acara
            RsvpPage(), // RSVP
            UcapanPage(), //Ucapan
            GaleryPage(), // Galeri
            CeritaPage(), // Cerita
            CardPage(), // Card

            HomePage(),
          ]),
          bottomNavigationBar: Container(
            color: Colors.transparent,
            child: Container(
              child: SizedBox(
                height: 80,
                child: AppBar(
                  bottom: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide:
                          BorderSide(color: Color(0xDD613896), width: 8.0),
                      insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
                    ),
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: true,
                    tabs: choices.map<Widget>((Choice choice) {
                      return Tab(
                        text: choice.title,
                        icon: Icon(choice.icon),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  final String namaPria;
  final IconData icon;
  const Choice(
      {required this.title, required this.icon, required this.namaPria});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'SAMPUL', icon: Icons.home_filled, namaPria: 'asd'),
  Choice(title: 'MEMPELAI', icon: Icons.favorite, namaPria: 'asd'),
  Choice(title: 'ACARA', icon: Icons.event, namaPria: 'asd'),
  Choice(title: 'RSVP', icon: Icons.rsvp, namaPria: 'asd'),
  Choice(title: 'UCAPAN', icon: Icons.chat_outlined, namaPria: 'asd'),
  Choice(title: 'GALERI', icon: Icons.rsvp, namaPria: 'asd'),
  Choice(title: 'CERITA', icon: Icons.timeline, namaPria: 'asd'),
  Choice(title: 'AMPLOP ONLINE', icon: Icons.card_travel, namaPria: 'asd'),
  Choice(title: 'LOKASI', icon: Icons.maps_home_work, namaPria: 'asd'),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  void getData() async {
    Mempelai.getMempelai('fajar-tika');
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              choice.icon,
              size: 150.0,
              color: textStyle!.color,
            ),
            Text(
              choice.title,
              style: textStyle,
            ),
            RaisedButton(onPressed: getData)
          ],
        ),
      ),
    );
  }
}
