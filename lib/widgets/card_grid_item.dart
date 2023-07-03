import 'package:card_match/providers/cards_provider.dart';
import 'package:card_match/providers/index_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardGridItem extends ConsumerWidget {
  CardGridItem({
    super.key,
    required this.front,
    required this.back,
    required this.matchingId,
    required this.hidden,
    required this.index,
  });

  final Image front;
  final Image back;
  final int matchingId;
  bool hidden;
  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexer = ref.watch(indexProvider.notifier);
    final cards = ref.watch(cardsProvider.notifier);

    return GestureDetector(
      onTap: () {
        hidden = !hidden;

        cards.flipCard(
          this,
          hidden,
        );

        indexer.addIndex(index);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: hidden ? front.image : back.image),
        ),
      ),
    );
  }
}
