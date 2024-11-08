import 'package:dio/dio.dart';

class Api {
  final Dio dio;
  String _baseUrl = 'https://www.googleapis.com/books/v1/';

  Api(this.dio);
  Future<Map<String, dynamic>> get({required String endBoint}) async {
    Response response = await dio.get('$_baseUrl$endBoint');
    Map<String, dynamic> theData = response.data;
    return theData;
  }
}
