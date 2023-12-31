import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter extends StateNotifier<int> {
  Counter(this.ref) : super(0);

  final Ref ref;

  void increment() {
    state = state + 1;
    if (state % 2 == 0 && state != 0) {
      
    }
  }
}

final counterProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter(ref);
});