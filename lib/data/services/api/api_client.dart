import 'package:curso_mvvm_youtube/data/services/api/models/login_request.dart';
import 'package:curso_mvvm_youtube/data/services/api/models/login_response.dart';
import 'package:curso_mvvm_youtube/utils/result.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final String _apiUrl;
  final Dio _dio;

  const ApiClient({required this._apiUrl, required this._dio});

  Future<Result<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final endpoint = '$_apiUrl/auth/login';
      final response = await _dio.post(endpoint, data: loginRequest.toJSon());

      if (response.statusCode == 200) {
        final result = LoginResponse.fromJson(response.data);
        return Result.ok(result);
      }
      return Result.error(Exception('Ocorreu um erro ao realizar o login'));
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
