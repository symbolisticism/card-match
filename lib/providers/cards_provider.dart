import 'package:card_match/data/cards_list.dart';
import 'package:card_match/widgets/card_grid_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// final cardsProvider = Provider((ref) => cardsList);

class CardsNotifier extends StateNotifier<List<CardGridItem>> {
  CardsNotifier() : super(cardsList);

  void flipCard(CardGridItem card, bool hidden) {
    card.hidden = hidden;
  }
}

final cardsProvider = StateNotifierProvider<CardsNotifier, List<CardGridItem>>(
    (ref) => CardsNotifier());
