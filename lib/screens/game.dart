import 'package:card_match/data/cards_list.dart';
import 'package:flutter/material.dart';
import 'package:card_match/widgets/card_grid_item.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  late bool _isHidden;
  late int _counter;
  late List<CardGridItem> _matchingCards = [];


  void _toggleVisibility() {
    if (_counter != 2) {
      // _isHidden = !_isHidden;
      _counter++;
    } else {
      setState(() {
        _isHidden = !_isHidden;
      });
      _counter = 1;
    }
  }

  void _loadList() {
    for (final card in cardsList) {
      _matchingCards.add(
      CardGridItem(
          front: card.front,
          back: card.back,
          matchingId: card.matchingId,
          hidden: _isHidden,
        ),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _isHidden = true;
    _counter = 1;
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
        children: _matchingCards,
      ),
    );
  }
}
