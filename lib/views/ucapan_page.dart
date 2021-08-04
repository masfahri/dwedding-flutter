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
        child: Card(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Berikan Ucapan Pada Kami"),
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
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
                padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
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
    );
  }
}
