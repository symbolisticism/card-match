import 'package:card_match/providers/cards_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Game extends ConsumerStatefulWidget {
  const Game({super.key});

  @override
  ConsumerState<Game> createState() => _GameState();
}

class _GameState extends ConsumerState<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card Match Game',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black54,
      ),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: ref.watch(cardsProvider),
      ),
    );
  }
}
