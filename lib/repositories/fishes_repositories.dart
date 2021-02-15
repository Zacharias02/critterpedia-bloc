import 'dart:convert';

import 'package:critterpedia/models/fish_model.dart';
import 'package:http/http.dart' as http;

class FishesRepository {
  FishesRepository();

  static const _baseUrl = 'http://acnhapi.com/v1/fish/';

  Future<Fishes> getFishes() async {
    final http.Response response = await http.get(_baseUrl);
    final dynamic jsonBody = json.decode(response.body);
    return Fishes.fromJson(jsonBody);
  }
}
