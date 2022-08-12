import 'dart:convert';

import 'package:provider_demo/models/provider_model.dart';
import 'package:http/http.dart' as http;

class DemoApiProvider {
  late DemoModel result;

  Future<DemoModel> getSinglePostData() async {
    try {
      var response = await http.get(Uri.parse(
          'https://us-central1-international-stylist-b06a9.cloudfunctions.net/test01/android'));
      if (response.statusCode == 200) {
        result = DemoModel.fromJson(json.decode(response.body));
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      e.toString();
    }
    return result;
  }
}