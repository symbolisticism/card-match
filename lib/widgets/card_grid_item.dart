import 'package:flutter/material.dart';

class CardGridItem extends StatefulWidget {
  const CardGridItem({
    super.key,
    required this.front,
    required this.back,
  });

  final Image front;
  final Image back;

  @override
  State<CardGridItem> createState() => _CardGridItemState();
}

class _CardGridItemState extends State<CardGridItem> {
  bool hidden = true;
  
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          hidden = !hidden;
          print(hidden);
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
