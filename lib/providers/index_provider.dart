import 'package:flutter_riverpod/flutter_riverpod.dart';

class IndexNotifier extends StateNotifier<List<int>> {
  IndexNotifier() : super([]);

  void addIndex(int index) {
    state = [...state, index];
  }

  void removeIndex(int index) {
    state = state.where((i) => i != index).toList();
  }

  void clearList() {
    state = [];
  }
}

final indexProvider =
    StateNotifierProvider<IndexNotifier, List<int>>((ref) => IndexNotifier());
