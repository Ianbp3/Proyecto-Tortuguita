import 'package:flutter/material.dart';

import '../models/weather.dart';

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
    final scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Turtle Weather')),
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
                  _Stat(
                    label: 'Wind',
                    value: '${_fake.windSpeed.toStringAsFixed(0)} km/h',
                    color: scheme.primary,
                  ),
                  _Stat(
                    label: 'Humidity',
                    value: '${_fake.humidity}%',
                    color: scheme.primary,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Stat extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  const _Stat({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(label),
      ],
    );
  }
}
