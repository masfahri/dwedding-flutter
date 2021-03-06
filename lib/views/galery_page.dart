import 'package:dwedding/views/components/galeri_carousel.dart';
import 'package:flutter/material.dart';

class GaleryPage extends StatefulWidget {
  const GaleryPage({Key? key}) : super(key: key);

  @override
  _GaleryPageState createState() => _GaleryPageState();
}

class _GaleryPageState extends State<GaleryPage> {
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
        body: GaleriCarousel());
  }
}
