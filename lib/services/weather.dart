import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const String APIKey = '3112ce6054309783597eb96854b09736';
const String openWeatherMapURL =
    'https://api.openweathermap.org/data/2.5/weather?';

class WeatherModel {
  Future getCityWeather(String cityName) async {
    var url = '${openWeatherMapURL}q=$cityName&appid=$APIKey&units=metric';
    NetworkHelper networkHelper = NetworkHelper(url);
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future getLocationWeather() async {
    Location location = Location();
    await location.getcurrrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '${openWeatherMapURL}lat=${location.latitude}&lon=${location.longitude}&appid=$APIKey&units=metric');
    var weatherData = await networkHelper.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
