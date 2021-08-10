import 'package:flutter/material.dart';

class UcapanPage extends StatefulWidget {
  const UcapanPage({Key? key}) : super(key: key);

  @override
  _UcapanPageState createState() => _UcapanPageState();
}

class _UcapanPageState extends State<UcapanPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          // Background
          image: DecorationImage(
              image: new NetworkImage(
                  "https://cdn.pixabay.com/photo/2020/09/15/16/18/background-5574100_1280.png"),
              fit: BoxFit.cover),
        ),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: new NetworkImage(
                    "https://i.pinimg.com/originals/ec/69/d4/ec69d4490976fa58351377f29c5f4a47.jpg"),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Berikan Ucapan Pada Kami",
                  style: TextStyle(
                    fontFamily: "Playball",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(60, 30, 60, 0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        hintText: "Masukan Nama Anda",
                        labelText: "Nama Anda",
                        icon: Icon(Icons.people)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(60, 30, 60, 0),
                  child: TextField(
                    maxLines: 8,
                    decoration: new InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0)),
                        hintText: "Masukan Pesan Anda",
                        labelText: "Pesan Anda",
                        icon: Icon(Icons.chat)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(60, 30, 60, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate returns true if the form is valid, or false otherwise.
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                      }
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
