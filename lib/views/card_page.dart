import 'package:dwedding/models/debitCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  final List<String> bankLogo = <String>[
    'https://i0.wp.com/www.alamatbank.com/wp-content/uploads/2014/11/Logo-BRI-300x250.png?fit=300%2C250&ssl=1',
    'https://cdn.freebiesupply.com/logos/thumbs/2x/bca-bank-central-asia-logo.png',
    'https://cdn.freebiesupply.com/logos/thumbs/2x/bank-mandiri-2-logo.png',
  ];

  final List<String> nomorRekening = <String>[
    '992266262',
    '127311363636',
    '12636366222',
  ];

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "assets/themes/flowerside/background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
                "Untuk Melengkapi Kebahagiaan Kami Temen-Temen Bisa Memberikan Hadiah"),
            Text("Melalui Saluran Dibawah Ini:"),
            ListView.separated(
              shrinkWrap: true, ///////////////////////Use This Line
              padding: const EdgeInsets.all(8),
              itemCount: debitCards.length,
              itemBuilder: (BuildContext context, int index) {
                final debitCard = debitCards[index];

                return Card(
                  child: Container(
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.all(2),
                            child: Expanded(
                              child: Image.network("${debitCard.logo}"),
                              flex: 1,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: ListTile(
                                    title: Text("${debitCard.name}"),
                                    subtitle: Text("${debitCard.norek}"),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 8,
                                      ),
                                      TextButton(
                                        child: Text("Salin Nomor Rekening"),
                                        onPressed: () {
                                          Clipboard.setData(ClipboardData(
                                              text: '${debitCard.norek}'));
                                        },
                                      ),
                                      SizedBox(
                                        width: 8,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 8,
                        ),
                      ],
                    ),
                  ),
                  elevation: 8,
                  margin: EdgeInsets.all(10),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            )
          ],
        ),
      ),
    );
  }
}
