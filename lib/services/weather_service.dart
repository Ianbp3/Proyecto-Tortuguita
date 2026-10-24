import '../models/weather.dart';

abstract class WeatherService {
  Weather getCurrentWeather();
}

class FakeWeatherService implements WeatherService {
  const FakeWeatherService();

  @override
  Weather getCurrentWeather() {
    return const Weather(
      city: 'San Pedro Sula',
      temperature: 28.0,
      condition: 'Sunny',
      windSpeed: 12.0,
      humidity: 68,
    );
  }
}
