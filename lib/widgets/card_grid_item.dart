import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class CardGridItem extends ConsumerStatefulWidget {
  const CardGridItem({
    super.key,
    required this.front,
    required this.back,
    required this.matchingId,
    required this.hidden,
  });

  final Image front;
  final Image back;
  final int matchingId;
  final bool hidden;

  @override
  ConsumerState<CardGridItem> createState() => _CardGridItemState();
}

class _CardGridItemState extends ConsumerState<CardGridItem> {
  late bool hidden = widget.hidden;

  @override
  Widget build(BuildContext context) {
    // in stateful widget, you have to use 'ref' inside of
    // the 'build' method to avoid an error

    return GestureDetector(
      onTap: () {
        setState(() {
          hidden = !hidden;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: hidden ? widget.front.image : widget.back.image),
        ),
      ),
    );
  }
}
