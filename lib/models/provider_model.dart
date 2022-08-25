import 'package:provider_demo/models/provider_model.dart';

class DemoModel {
  int? userId;
  int? id;
  String? title;
  DemoModel({this.userId, this.id, this.title});
  DemoModel.fromJson(Map<String, dynamic> json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
  }
}
