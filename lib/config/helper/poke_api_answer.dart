import 'package:dio/dio.dart';

class PokeApiAnswer {
  final _dio = Dio();

  getAnswer(){
    final response = _dio.get('');
    
  }

}