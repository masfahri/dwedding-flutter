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
        body: Card(
      child: GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index) {
          return Center(
            child: Image.network(
                "https://u.digital.wedding/assets/users/6186daadf651cf00fb89bde4b1301919/groom.png"),
          );
        }),
      ),
    ));
  }
}
