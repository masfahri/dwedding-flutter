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
        body: Container(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("RSVP"),
            TextFormField(
              decoration: new InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(5.0)),
                  hintText: "Masukan Nama Lengkap Anda",
                  labelText: "Nama Anda",
                  icon: Icon(Icons.people)),
            ),
            InputDecorator(
                decoration: new InputDecoration(
                    icon: Icon(Icons.people), border: InputBorder.none),
                child: DropdownButtonHideUnderline(
                  child: DropdownSearch<String>(
                      showSelectedItem: true,
                      items: [
                        "Saya akan datang",
                        "Saya tidak akan datang",
                        "Saya kemungkinan datang",
                      ],
                      label: "Menu mode",
                      popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: print,
                      selectedItem: "-"),
                )),
            InputDecorator(
                decoration: new InputDecoration(
                    icon: Icon(Icons.people), border: InputBorder.none),
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
                      label: "Menu mode",
                      popupItemDisabled: (String s) => s.startsWith('I'),
                      onChanged: print,
                      selectedItem: "-"),
                )),
            ElevatedButton(
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
          ],
        ),
      ),
    ));
  }
}
