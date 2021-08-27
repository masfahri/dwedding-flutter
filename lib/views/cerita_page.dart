import 'package:dwedding/views/components/acara_resepsi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';

import 'components/cerita.dart';

class CeritaPage extends StatefulWidget {
  const CeritaPage({Key? key}) : super(key: key);

  @override
  _CeritaPageState createState() => _CeritaPageState();
}

class _CeritaPageState extends State<CeritaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "assets/themes/flowerside/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: CeritaComponents(),
      ),
    );
  }
}
