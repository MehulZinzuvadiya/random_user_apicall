import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Model/random_model.dart';

class ApiHelper {
  Future<RandomModel?> randomApiCall() async {
    String? apiLink = "https://randomuser.me/api/";
    Uri uri = Uri.parse(apiLink);
    var response = await http.get(uri);

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      RandomModel randomModel = RandomModel.fromJson(json);
      return randomModel;
    } else {
      return null;
    }
  }
}
