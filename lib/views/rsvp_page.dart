import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class RsvpPage extends StatefulWidget {
  const RsvpPage({Key? key}) : super(key: key);

  @override
  _RsvpPageState createState() => _RsvpPageState();
}

class _RsvpPageState extends State<RsvpPage> {
  final _formKey = GlobalKey<FormState>();

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
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(
                  "https://i.pinimg.com/originals/ec/69/d4/ec69d4490976fa58351377f29c5f4a47.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 100,
              ),
              Text(
                "RSVP",
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
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                    hintText: "Masukan Nama Lengkap Anda",
                    labelText: "Nama Anda",
                    icon: Icon(Icons.people),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(60, 30, 60, 0),
                child: InputDecorator(
                  decoration: new InputDecoration(
                    icon: Icon(Icons.people),
                    border: InputBorder.none,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownSearch<String>(
                      showSelectedItem: true,
                      items: [
                        "Saya akan datang",
                        "Saya tidak akan datang",
                        "Saya kemungkinan datang",
                      ],
                      label: "Kehadiran",
                      popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: print,
                      selectedItem: "-",
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(60, 30, 60, 0),
                child: InputDecorator(
                  decoration: new InputDecoration(
                    icon: Icon(Icons.people),
                    border: InputBorder.none,
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownSearch<String>(
                      showSelectedItem: true,
                      items: [
                        "1 Orang",
                        "2 Orang",
                        "3 Orang",
                        "4 Orang",
                        "5 Orang",
                        "6 Orang",
                        "7 Orang",
                        "8 Orang",
                        "9 Orang",
                        "10 Orang",
                      ],
                      label: "Jumlah Kehadiran",
                      popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: print,
                      selectedItem: "-",
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
