import 'package:card_match/widgets/card_grid_item.dart';
import 'package:flutter/material.dart';

final front = Image.asset('assets/images/fleur_de_lis.png');

final cardsList = [
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/curvy_lines.png'),
    matchingId: 1,
    hidden: true,
    index: 1,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/curvy_lines.png'),
    matchingId: 1,
    hidden: true,
    index: 2,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/glass_house.png'),
    matchingId: 2,
    hidden: true,
    index: 3,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/glass_house.png'),
    matchingId: 2,
    hidden: true,
    index: 4,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/rooster.png'),
    matchingId: 3,
    hidden: true,
    index: 5,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/rooster.png'),
    matchingId: 3,
    hidden: true,
    index: 6,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/water.png'),
    matchingId: 4,
    hidden: true,
    index: 7,
  ),
  CardGridItem(
    front: front,
    back: Image.asset('assets/images/water.png'),
    matchingId: 4,
    hidden: true,
    index: 8,
  ),
];
