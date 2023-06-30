import 'package:card_match/widgets/card_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:card_match/screens/game.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List<CardGridItem> matchingCards = [];

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
        cardTheme: const CardTheme(margin: EdgeInsets.all(2)),
      ),
      home: Game(matchingCards: matchingCards),
    );
  }
}
