import 'package:card_match/models/match_card.dart';
import 'package:flutter/material.dart';

final front = Image.asset('assets/images/fleur_de_lis.png');

final cardsList = [
  MatchCard(
    front: front,
    back: Image.asset('assets/images/curvy_lines.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/flowers.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/glass_house.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/money.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/rooster.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/spanish_mission.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/water.png'),
  ),
  MatchCard(
    front: front,
    back: Image.asset('assets/images/books.png'),
  ),
];
