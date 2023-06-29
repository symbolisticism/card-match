import 'package:flutter/material.dart';

class CardGridItem extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
