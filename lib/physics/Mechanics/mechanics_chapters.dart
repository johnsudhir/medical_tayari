import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class MechanicsChaptersList extends StatelessWidget {
  static const String mechanicsChapters = 'mechanicsChapters';
  final List<String> routeMechanicsChapters = [];
  final List<String> mechanicsChaptersList = [
    'Units And Dimensions',
    'Vector And Scalar',
    'Motion',
    'Laws of Motion',
    'Circular Motion',
    'Rotational Motion',
    'Simple Harmonic Motion (SHM)',
    'Friction',
    'Work and Energy',
    'Elasticity',
    'Surface Tension',
    'Hydrostatics',
    'Fluid Dynamics',
  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
        tileTitles: mechanicsChaptersList,
        title: 'Mechanics',
      routeTiles: routeMechanicsChapters,

    );
  }
}
