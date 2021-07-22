import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class ElectroStatChaptersList extends StatelessWidget {
  static const String electroStatChapters = 'electroStatChapters';
  final List<String> routeElectroStatChapters = [];
  final List<String> electroStatChaptersList = [
    'Charge and Force',
    'Electric Field and Potential',
    'Capacitance'
  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
      tileTitles: electroStatChaptersList,
      title: 'Electrostatics',
      routeTiles: routeElectroStatChapters,

    );
  }
}
