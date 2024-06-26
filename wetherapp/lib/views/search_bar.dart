
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wetherapp/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
          var getWeatherCubit= BlocProvider.of<GetWeatherCubit>(context);
             getWeatherCubit.getWeather(cityName: value );
              Navigator.pop(context); 
            },
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 30,
                ),
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                hintText: 'Enter City Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green))),
          ),
        ),
      ),
    );
  }
}
