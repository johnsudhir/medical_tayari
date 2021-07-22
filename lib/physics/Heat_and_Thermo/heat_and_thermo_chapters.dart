import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class ThermoDynamicsChapterList extends StatelessWidget {
  static const String thermodynamicsChapters = 'thermodynamicsChapters';
  final List<String> routeThermoDynamicsChapters = [];
  final List<String> mechanicsChapters = [
    'Thermometry',
    'Thermal Expansion',
    'Transmission of Heat',
    'Kinetic Theory And Gas Laws',
    'Calorimetry and Hygrometry',
    'Thermodynamics',

  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
      tileTitles: mechanicsChapters,
      title: 'Heat And Thermodynamics',
      routeTiles: routeThermoDynamicsChapters,

    );
  }
}
