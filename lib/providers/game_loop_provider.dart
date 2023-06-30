import 'package:card_match/widgets/card_grid_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GameLoopNotifier extends StateNotifier<List<CardGridItem>> {
  GameLoopNotifier() : super([]);
}

final gameLoopProvider =
    StateNotifierProvider<GameLoopNotifier, List<CardGridItem>>(
        (ref) => GameLoopNotifier());

final counter = StateProvider<int>((ref) => 1);