import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapp/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:wetherapp/cubits/get_weather_state.dart';
import 'package:wetherapp/views/search_bar.dart';
import 'package:wetherapp/widgets/no_weather.dart';
import 'package:wetherapp/widgets/weather_info.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SearchView();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is NoWeatherState) {
            return const NoWeatherBody();
          } else if (state is WeatherSucsessState) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else {
            return const Text('OOPS THERE AN ERROR!!');
          }
        },
      ),
    );
  }
}
