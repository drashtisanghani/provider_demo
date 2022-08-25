import 'dart:convert';

import 'package:provider_demo/models/provider_model.dart';
import 'package:http/http.dart' as http;

class DemoApiProvider {
  List<DemoModel> result = [];

  Future<List<DemoModel>> getSinglePostData() async {
    try {
      var response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
      if (response.statusCode == 200) {
        List jsonResponse = json.decode(response.body);
        result = jsonResponse.map((job) => DemoModel.fromJson(job)).toList();
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      e.toString();
    }
    return result;
  }
}
