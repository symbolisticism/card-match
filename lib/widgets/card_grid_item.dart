import 'package:flutter/material.dart';

class CardGridItem extends StatelessWidget {
  const CardGridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: Image.asset('assets/images/fleur_de_lis.png').image),
        ),
      ),
    );
  }
}
