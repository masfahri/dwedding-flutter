import 'package:dwedding/components/get_map_widget.dart';
import 'package:flutter/material.dart';

class MapSecreen extends StatelessWidget {
  const MapSecreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: getMap()),
    );
  }
}
