import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class OpticsChaptersList extends StatelessWidget {
  static const String opticsChapters = 'opticsChapters';
  final List<String> routeOpticsChapters = [];
  final List<String> opticsChaptersList = [
    'Velocity of Light',
    'Plane and Curved Mirror Reflection',
    'Refraction (Plane) and TIR',
    'Refraction(Prism) and Dispersion',
    'Refraction(Lens)',
    'Chromatic Aberration, Human Eye, Optical Instruments',
    'Photometry',
    'Interference, Diffraction and Polarisation',
  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
      tileTitles: opticsChaptersList,
      title: 'Optics',
      routeTiles: routeOpticsChapters,

    );
  }
}
