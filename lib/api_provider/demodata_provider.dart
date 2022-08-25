import 'package:flutter/material.dart';
import 'package:provider_demo/api_provider/demo_provider.dart';
import 'package:provider_demo/models/provider_model.dart';

class DemoDataProvider extends ChangeNotifier {
  List<DemoModel> post = [];
  DemoApiProvider demoApiProvider = DemoApiProvider();

  Future<List<DemoModel>> getPostData() async {
    post = await demoApiProvider.getSinglePostData();
    notifyListeners();
    return post;
  }
}
