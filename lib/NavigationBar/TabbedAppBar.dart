import 'package:dwedding/models/Mempelai.dart';
import 'package:flutter/material.dart';

class TabbedAppBarDemoFull extends StatefulWidget {
  const TabbedAppBarDemoFull({Key? key}) : super(key: key);

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
            appBar: AppBar(
              title: const Text('Tabbed AppBar'),
            ),
            body: TabBarView(
              children: choices.map((Choice choice) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ChoicePage(
                    choice: choice,
                    key: null,
                  ),
                );
              }).toList(),
            ),
            bottomNavigationBar: Container(
              color: Colors.lightBlueAccent[700],
              child: Container(
                padding: EdgeInsets.only(bottom: 10.0),
                child: new TabBar(
                  indicator: UnderlineTabIndicator(
                    borderSide:
                        BorderSide(color: Color(0xDD613896), width: 8.0),
                    insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: true,
                  tabs: choices.map<Widget>((Choice choice) {
                    return Tab(
                      text: choice.title,
                      icon: Icon(choice.icon),
                    );
                  }).toList(),
                ),
              ),
            )),
      ),
    );
  }

  void initState() {
    Mempelai.getMempelai('fajar-tika');
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
  Choice(title: 'RSVP', icon: Icons.rsvp, namaPria: 'asd'),
  Choice(title: 'ACARA', icon: Icons.date_range_rounded, namaPria: 'asd'),
  Choice(title: 'UCAPAN', icon: Icons.comment, namaPria: 'asd'),
  Choice(title: 'ALBUM', icon: Icons.image_sharp, namaPria: 'asd'),
  Choice(title: 'CERITA KITA', icon: Icons.people, namaPria: 'asd'),
  Choice(title: 'LOKASI', icon: Icons.location_city_outlined, namaPria: 'asd'),
  Choice(title: 'GIFT', icon: Icons.card_giftcard_rounded, namaPria: 'asd'),
  Choice(
      title: 'AMPLOP ONLINE',
      icon: Icons.account_balance_wallet,
      namaPria: 'asd'),
];

class ChoicePage extends StatelessWidget {
  const ChoicePage({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

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
          ],
        ),
      ),
    );
  }
}
