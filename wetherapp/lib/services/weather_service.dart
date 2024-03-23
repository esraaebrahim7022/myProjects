import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:wetherapp/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final String baseurl = 'https://api.weatherapi.com/v1';
  final String apikey = '089e5eb88ac846a0be3121216230512';

  WeatherService(this.dio);
  Future<WeatherModel> getcrruntweather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseurl/forecast.json?key=$apikey&q=$cityName&day=1');

      WeatherModel weatherModel = WeatherModel.fromjson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'opps an error , please try again';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there an error, please try again');
    }
  }
}
