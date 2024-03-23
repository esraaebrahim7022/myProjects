import 'package:wetherapp/models/weather_model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}
class WeatherSucsessState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSucsessState({required this.weatherModel});
}

class WaetherFailureState extends WeatherState {
   final String errMessage;

  WaetherFailureState({required this.errMessage});

}
