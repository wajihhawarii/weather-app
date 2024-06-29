import 'package:bloc_weather/cubits/weather_cubits/weather_state.dart';
import 'package:bloc_weather/models/weather_model.dart';
import 'package:bloc_weather/services/weather_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherService weatherService;
  String cityName = "";
  // WeatherModel? weatherModel;
  WeatherCubit(this.weatherService)
      : super(
            WeatherInitial()); // BlockBuilder() ظ هنا الحالة الفتراضية التي يكون عليها

//دالة لجلب الطقس وهي تحتاج الى وقت

  void getWeather({required String cityName}) async {
    //لن تنفذ هذه الدالة الا بوجود قادح
    emit(WeatherLoding());
    try {
      WeatherModel weatherModel =
          await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess(weatherModel));
      // ignore: unused_catch_clause
    } on Exception catch (e) {
      emit(WeatherFailure());
    }
  }
}
