
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapp/cubits/get_weather_state.dart';
import 'package:wetherapp/models/weather_model.dart';
import 'package:wetherapp/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  
  getWeather({required String cityName}) async{
     try {
  WeatherModel weatherModel =
               await WeatherService(Dio()).getcrruntweather(cityName: cityName);
               emit(WeatherSucsessState(weatherModel: weatherModel));
}  catch (e) {
emit(WaetherFailureState(errMessage: 'oops an eeror'));
}
  }
  }
  
