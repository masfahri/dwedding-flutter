import 'package:dwedding/utils/SizeConfig.dart';
import 'package:dwedding/views/components/mempelai_pria.dart';
import 'package:dwedding/views/components/mempelai_wanita.dart';
import 'package:flutter/material.dart';

class MempelaiPage extends StatefulWidget {
  const MempelaiPage({Key? key}) : super(key: key);

  @override
  _MempelaiPageState createState() => _MempelaiPageState();
}

class _MempelaiPageState extends State<MempelaiPage> {
  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          // Background
          image: DecorationImage(
              image: new NetworkImage(
                  "https://cdn.pixabay.com/photo/2020/09/15/16/18/background-5574100_1280.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 100),
            Container(
              child: Image.network(
                "https://u.digital.wedding/assets/base/img/bismillah.png",
                height: 50,
              ),
            ),
            MempelaiPria(),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("&",
                      style: TextStyle(fontSize: 40, fontFamily: "Playball"),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
            MempelaiWanita()
          ],
        ),
      ),
    );
  }
}
