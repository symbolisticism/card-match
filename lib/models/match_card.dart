import 'package:flutter/material.dart';

class MatchCard {
  MatchCard({
    required this.front,
    required this.back,
    required this.matchingId,
    required this.hidden,
  });

  final Image front;
  final Image back;
  final int matchingId;
  bool hidden;
}
