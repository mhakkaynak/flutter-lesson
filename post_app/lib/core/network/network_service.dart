import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:post_app/core/base/base_model.dart';
import 'package:post_app/core/network/base_network_manager.dart';

class NetworkService extends BaseNetworkManager {
  @override
  Future<dynamic> fetchData(String path) async {
    try {
      var response = await dio.get(path);
      return jsonDecode(response.toString());
    } catch (e) {
      print(e);
    }
  }

  @override
  Future postData<T extends BaseModel>(String path, T model) async {
    try {
      var response = await dio.post(path, data: model.toJson());
      return jsonDecode(response.toString());
    } catch (e) {
      print(e);
    }
  }
}
