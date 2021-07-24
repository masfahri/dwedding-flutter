import 'dart:convert';
import 'package:http/http.dart' as http;

class Mempelai {
  String? id;
  String? idUser;
  String? namaPria;
  String? namaWanita;

  Mempelai({this.id, this.idUser, this.namaPria, this.namaWanita});

  factory Mempelai.createMempelai(Map<String, dynamic> object) {
    return Mempelai(
        id: object['id'].toString(),
        idUser: object['id_user'].toString(),
        namaPria: object['nama_pria'],
        namaWanita: object['nama_wanita']);
  }

  static Future<Mempelai> getMempelai(String domain) async {
    String apiURL =
        "http://dwedding-api-ci3.test/api/undangan/data?domain=" + domain;
    var response = await http.get(Uri.parse(apiURL));
    var jsonObject = json.decode(response.body);

    var dataMempelai = (jsonObject as Map<String, dynamic>)['mempelai'];

    return Mempelai.createMempelai(dataMempelai);
  }
}
