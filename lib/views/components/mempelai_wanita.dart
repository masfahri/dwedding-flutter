import 'package:flutter/material.dart';

class MempelaiWanita extends StatelessWidget {
  const MempelaiWanita({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 10, 0),
                  child: Text(
                    "Fajar Tri Setiawan",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Playball",
                    ),
                  )),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image.network(
                  "https://inv.simanten.com/images/library/line1.png",
                  fit: BoxFit.contain,
                  width: 100,
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          'Bapak Ahmad Mansur Syah (Alm)' +
                              '\n&' +
                              '\nIbu Lilis Hidayati, S.Pd.',
                          maxLines: 3,
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              ),
            ],
          ),
          Container(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://u.digital.wedding/assets/users/6186daadf651cf00fb89bde4b1301919/groom.png'),
            ),
          ),
        ],
      ),
    );
  }
}
