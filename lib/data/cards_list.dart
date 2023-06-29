import 'package:card_match/models/match_card.dart';
import 'package:flutter/material.dart';

final front = Image.asset('assets/images/fleur_de_lis.png');

final cardsList = [
  MatchCard(
    front: front,
    back: Image.asset('assets/images/curvy_lines.png'),
    matchingId: 1,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/curvy_lines.png'),
    matchingId: 1,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/glass_house.png'),
    matchingId: 2,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/glass_house.png'),
    matchingId: 2,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/rooster.png'),
    matchingId: 3,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/rooster.png'),
    matchingId: 3,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/water.png'),
    matchingId: 4,
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/water.png'),
    matchingId: 4,
  ),
];
