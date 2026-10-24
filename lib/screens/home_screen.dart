import 'package:flutter/material.dart';

import '../widgets/stat_tile.dart';
import '../models/weather.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const Weather _fake = Weather(
    city: 'San Pedro Sula',
    temperature: 28.0,
    condition: 'Sunny',
    windSpeed: 12.0,
    humidity: 68,
  );

  @override
  Widget build(BuildContext context) {
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
                _fake.city,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 16),
              const Text('🐢', style: TextStyle(fontSize: 96)),
              const SizedBox(height: 16),
              Text(
                '${_fake.temperature.toStringAsFixed(0)}°C',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                _fake.condition,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StatTile(
                    label: 'Wind',
                    value: '${_fake.windSpeed.toStringAsFixed(0)} km/h',
                  ),
                  StatTile(label: 'Humidity', value: '${_fake.humidity}%'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
