import 'package:dwedding/views/components/acara_akad.dart';
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
  int endTime = DateTime.now().millisecondsSinceEpoch + 1000 * 30;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: CeritaComponents(),
        decoration: BoxDecoration(
          // Background
          image: DecorationImage(
            image: new NetworkImage(
                "https://png.pngtree.com/png-vector/20190724/ourlarge/pngtree-elegant-floral-frame-with-soft-watercolor-flowers-and-leaves-png-image_1589450.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
