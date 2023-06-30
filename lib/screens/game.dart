import 'package:card_match/data/cards_list.dart';
import 'package:card_match/providers/cards_provider.dart';
import 'package:flutter/material.dart';
import 'package:card_match/widgets/card_grid_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Game extends ConsumerStatefulWidget {
  const Game({
    super.key,
    required this.matchingCards,
  });

  final List<CardGridItem> matchingCards;

  @override
  ConsumerState<Game> createState() => _GameState();
}

class _GameState extends ConsumerState<Game> {
  void _loadList() {
    for (final card in cardsList) {
      widget.matchingCards.add(
        CardGridItem(
          front: card.front,
          back: card.back,
          matchingId: card.matchingId,
          hidden: true,
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _loadList();
  }

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
        children: widget.matchingCards,
      ),
    );
  }
}
