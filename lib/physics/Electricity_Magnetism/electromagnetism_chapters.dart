import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
class ElectroMagnetismChaptersList extends StatelessWidget {
  static const String electroMagnetismChapters = 'electroMagnetismChapters';
  final List<String> routeElectroMagnetismChapters = [];
  final List<String> electroMagnetismChaptersList = [
    'Current',
    'Meters',
    'Heating Effects of Current',
    'Chemical Effects of Current',
    'Magnetic Effects of current'
    'ThermoElectricity',
    'Magnetism',
    'Electromagnetic Induction',
    'Alternatic Current (AC)',


  ];
  @override
  Widget build(BuildContext context) {
    return UnitTiles(
      tileTitles: electroMagnetismChaptersList,
      title: 'Electricity And Magnetism',
      routeTiles: routeElectroMagnetismChapters,

    );
  }
}
