import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class ModernPhysicsChaptersList extends StatelessWidget {
  static const String modernPhysicsChapters = 'modernPhysicsChapters';
  final List<String> routeModernPhysicsChapters = [];
  final List<String> modernPhysicsChaptersList = [
    'Electrons, Cathode Rays and Positive Rays',
    'X- Rays',
    'Photoelectric Effect',
    'Structure of Atom and Spectrum',
    'Nuclear Physics',
    'RadioActivity',
    'Logic Gates'
    'Semiconductor and Devices',
    'Diode and Triode Valves',
    'Universe, Cosmos and Relativity'
  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
      tileTitles: modernPhysicsChaptersList,
      title: 'Modern Physics',
      routeTiles: routeModernPhysicsChapters,

    );
  }
}
