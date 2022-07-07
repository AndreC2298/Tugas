import 'package:networkingfl/dataclass.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'data.dart';

class Service {
  Future<List<Data>> getAllData() async {
    final response = await http.get(
        Uri.parse('https://6283762138279cef71d77f41.mockapi.io/api/v1/Data'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((data) => Data.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load data');
    }
  }

  Future postData(
    String namap,
    String avatarp,
    String alamatp,
    String emailp,
    String pekerjaanp,
    String quotep,
  ) async {
    final response = await http.post(
        Uri.parse('https://6283762138279cef71d77f41.mockapi.io/api/v1/Data'),
        body: {
          "nama": namap,
          "avatar": avatarp,
          "alamat": alamatp,
          "email": emailp,
          "pekerjaan": pekerjaanp,
          "quote": quotep,
        });

    if (response.statusCode == 201) {
      return true;
    } else {
      throw Exception('Failed');
    }
  }

  Future<Data> getSingleData(String id) async {
    final response = await http.get(Uri.parse(
        'https://6283762138279cef71d77f41.mockapi.io/api/v1/Data/$id'));

    if (response.statusCode == 200) {
      Data jsonResponse = Data.fromJson(jsonDecode(response.body));
      return jsonResponse;
    } else {
      throw Exception('Failed');
    }
  }

  Future<bool> deleteData(String id) async {
    final response = await http.delete(Uri.parse(
        'https://6283762138279cef71d77f41.mockapi.io/api/v1/Data/$id'));

    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Failed');
    }
  }
}
