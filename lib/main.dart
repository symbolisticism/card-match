import 'package:flutter/material.dart';
import 'package:card_match/screens/game.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Match',
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 240, 4, 4),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 139, 58, 58),
        cardTheme: const CardTheme(
          margin: EdgeInsets.all(2)
        ),
      ),
      home: const Game(),
    );
  }
}
