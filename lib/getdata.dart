import 'package:dio/dio.dart';

import 'user_model.dart';



Future<List<UserModel>> getData(filter) async {
  var response = await Dio().get(
    "https://63c1210999c0a15d28e1ec1d.mockapi.io/users",
    queryParameters: {"filter": filter},
  );

  final data = response.data;
  if (data != null) {
    return UserModel.fromJsonList(data);
  }

  return [];
}