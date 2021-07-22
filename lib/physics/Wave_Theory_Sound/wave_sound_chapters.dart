import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class SoundAndWaveChaptersList extends StatelessWidget {
  static const String waveTheoryChapters = 'waveTheoryChapters';
  final List<String> routeWaveTheoryChapters = [];
  final List<String> mechanicsChapters = [
   'Wave',
    'Stationary And Standing Waves',
    'Superpositon of Waves',
    'Doppler\'s Effect',
  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
      tileTitles: mechanicsChapters,
      title: 'Wave Theory',
      routeTiles: routeWaveTheoryChapters,

    );
  }
}
