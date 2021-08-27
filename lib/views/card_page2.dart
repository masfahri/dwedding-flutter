import 'package:flutter/material.dart';
import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/services.dart';
import 'package:snack/snack.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  static Widget gradient = Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.purple, Colors.blue])),
  );

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final bar = SnackBar(content: Text("Berhasil Copy"));

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, //change here don't //worked
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          margin:
              EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 12.0),
          width: 15.0,
          height: 15.0,
          decoration: BoxDecoration(
              color: Colors.red, borderRadius: BorderRadius.circular(40.0)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "task.title",
              style: TextStyle(
                color: Colors.black,
                fontSize: 19.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Duration: ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            )
          ],
        ),
        new Spacer(), // I just added one line
        Icon(
          Icons.navigate_next,
          color: Colors.black,
        ) // This Icon
      ],
    );
  }
}
