import 'package:flutter/material.dart';

class MempelaiPage extends StatefulWidget {
  const MempelaiPage({Key? key}) : super(key: key);

  @override
  _MempelaiPageState createState() => _MempelaiPageState();
}

class _MempelaiPageState extends State<MempelaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.lightBlueAccent[700],
          child: Card(
            color: Colors.lightBlueAccent[700],
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/736x/ee/99/47/ee9947bc2f52b7ee300ee721c8910f0a.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                  child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Image.network(
                          "https://u.digital.wedding/assets/base/img/bismillah.png",
                          height: 50,
                          fit: BoxFit.contain),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                      child: Text(
                        "Assalamu'alaikum warahmatullahi wabarakatuh Dengan memohon rahmat dan ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 70,
                                        backgroundImage: NetworkImage(
                                          "https://u.digital.wedding/assets/themes/blueroses/img/bg-flower.png",
                                        ),
                                        backgroundColor: Colors.transparent,
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(
                                              'https://u.digital.wedding/assets/users/6186daadf651cf00fb89bde4b1301919/groom.png'),
                                        ),
                                      ),
                                      Text("Romeo"),
                                      Text("Bpk. Wayaw S.pd"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text('Dengan'),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      CircleAvatar(
                                        radius: 70,
                                        backgroundImage: NetworkImage(
                                          "https://u.digital.wedding/assets/themes/blueroses/img/bg-flower.png",
                                        ),
                                        backgroundColor: Colors.transparent,
                                        child: CircleAvatar(
                                          radius: 50,
                                          backgroundImage: NetworkImage(
                                              'https://u.digital.wedding/assets/users/6186daadf651cf00fb89bde4b1301919/groom.png'),
                                        ),
                                      ),
                                      Text("Bpk. Wayaw S.pd"),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Text("Wiw"),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
            ),
          )),
    );
  }
}
