import 'package:dio/dio.dart';
import 'package:Frontend/models/user.dart';
import 'package:Frontend/services/client.dart';

class AuthServices {

  Future<Map<String, dynamic>> signup({required User user}) async {
    try {
      Response response = await Client.dio.post('/auth/signup', data: user.toJson());
      return {'token': response.data["token"]};
    } on DioException catch (error) {
      print(error.response!.data);
      return {'errors': error.response!.data["errors"]};
    }
  }

  Future<Map<String, dynamic>> signin({required User user}) async {
    try {
      // print(user.toJson());
      Response response =
          await Client.dio.post('/auth/signin', data: user.toJson());
      return {'token': response.data["token"], 'balance': response.data["balance"]};
      // print(token);
    } on DioException catch (error) {
      print(error.response!.data);
      return {'errors': error.response!.data["errors"]};
    }
  }
}