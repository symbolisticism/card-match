import 'package:flutter/material.dart';

class MatchCard {
  const MatchCard({
    required this.front,
    required this.back,
    required this.matchingId,
  });

  final Image front;
  final Image back;
  final int matchingId;
}
