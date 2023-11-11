import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://www.hotelsgo.co/test/hotels';
  final Dio _dio;

  ApiService(this._dio);

  Future<List<dynamic>> getHotels() async {
    var response = await _dio.get(_baseUrl);
    if (response.statusCode! >= 200 && response.statusCode! < 400) {
      return response.data;
    } else if (response.statusCode! >= 400 && response.statusCode! < 500) {
      throw Exception(
          'There is Problem (In Client Side) with Status Code. => ${response.statusCode}');
    } else if (response.statusCode! >= 500) {
      throw Exception(
          'There is Problem (In Server Side) with Status Code. => ${response.statusCode}');
    } else {
      throw Exception(
          'There is Problem with Status Code. => ${response.statusCode}');
    }
  }
}
