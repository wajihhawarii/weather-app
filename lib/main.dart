import 'package:bloc_weather/cubits/weather_cubits/weather_cubit.dart';
import 'package:bloc_weather/pages/home_page.dart';
import 'package:bloc_weather/services/weather_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
      create: (context) {
        return WeatherCubit(
          WeatherService(),
        );
      },
      child: const WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // primarySwatch:
          //     BlocProvider.of<WeatherCubit>(context).weatherModel == null
          //         ? Colors.blue
          //         : BlocProvider.of<WeatherCubit>(context)
          //             .weatherModel!
          //             .getThemeColor(),
          ),
      home: HomePage(),
    );
  }
}
