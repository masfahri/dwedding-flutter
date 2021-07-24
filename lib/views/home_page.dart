import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatelessWidget {
  final String apiUrl =
      "http://dwedding-api-ci3.test/api/undangan/data?domain=fajar-tika";
  Future<dynamic> _fecthDataMempelai() async {
    var result = await http.get(Uri.parse(apiUrl));
    print(json.decode(result.body)['mempelai']);
    return json.decode(result.body)['mempelai'];
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? textStyle = Theme.of(context).textTheme.display1;

    return Scaffold(
      body: Container(
        child: FutureBuilder<dynamic>(
          future: _fecthDataMempelai(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return Card(
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        snapshot.data['nama_pria'],
                        style: textStyle,
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
