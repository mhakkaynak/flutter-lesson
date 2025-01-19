import 'package:dio/dio.dart';
import 'package:post_app/core/base/base_model.dart';

abstract class BaseNetworkManager {
  final Dio dio = Dio(
      BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com', headers: {
    'Accept': 'application/json',
  }));

  Future<dynamic> fetchData(String path);

  Future<dynamic> postData<T extends BaseModel>(String path, T model);
}
