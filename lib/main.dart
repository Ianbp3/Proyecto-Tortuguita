import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const TurtleWeatherApp());
}

class TurtleWeatherApp extends StatelessWidget {
  const TurtleWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Turtle Weather',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
