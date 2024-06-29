import 'package:bloc_weather/models/weather_model.dart';

abstract class WeatherState {}

// Define Cases
class WeatherInitial extends WeatherState {}

class WeatherLoding extends WeatherState {}

class WeatherSuccess extends WeatherState {
  //مثلا نضع البيانات التي سوف نستقبلها في هذا الحالة هنا
  WeatherModel? weatherModel;
  WeatherSuccess(this.weatherModel);
}

class WeatherFailure extends WeatherState {}
