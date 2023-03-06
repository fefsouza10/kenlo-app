import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:kenlo_app/data/models/sao_paulo_cities_model.dart';

class CitiesService extends GetxService {
  Future<SaoPauloCities> fetchSaoPauloCities() async {
    final response =
        await http.get(Uri.parse('http://192.168.15.125:3000/lista'));

    if (response.statusCode == 200) {
      return SaoPauloCities.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load Sao Paulo Cities.');
    }
  }
}
