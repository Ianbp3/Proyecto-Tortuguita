import 'package:flutter/material.dart';

import '../models/weather.dart';
import '../services/weather_service.dart';
import '../widgets/stat_tile.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  final WeatherService service;

  const HomeScreen({super.key, this.service = const FakeWeatherService()});

  @override
  Widget build(BuildContext context) {
    final Weather weather = service.getCurrentWeather();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Turtle Weather'),
        actions: [
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const FavoritesScreen()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weather.city,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const Text('🐢', style: TextStyle(fontSize: 96)),
              const SizedBox(height: 16),
              Text(
                '${weather.temperature.toStringAsFixed(0)}°C',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                weather.condition,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatTile(
                    label: 'Wind',
                    value: '${weather.windSpeed.toStringAsFixed(0)} km/h',
                  ),
                  StatTile(label: 'Humidity', value: '${weather.humidity}%'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
