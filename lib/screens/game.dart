import 'package:card_match/data/cards_list.dart';
import 'package:card_match/models/match_card.dart';
import 'package:flutter/material.dart';
import 'package:card_match/widgets/card_grid_item.dart';

class Game extends StatelessWidget {
  const Game({super.key});

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
        children: [
          for (final card in cardsList)
            CardGridItem(front: card.front, back: card.back)
        ],
      ),
    );
  }
}
