import 'package:medical_tayari/models/UnitTiles.dart';
import 'package:flutter/material.dart';
class BotanyUnits extends StatelessWidget {
  static const String botanyUnits = 'BotanyUnits';
  final List<String> botanyUnitsRoute = [];
  final List<String> botanyUnitsList = [
    'Cell Biology',
    'Cell Division',
    'BioMolecules',
    'Genetics',
    'Enzymes',
    'Plant Anatomy',
    'Mineral Nutrition for Plants',
    'Respiration',
    'Photosynthesis',
    'Growth and Plant Hormones',
    'Plant Movement',
    'Special Modes of Nutrition',
    'Plant Diversity',
    'Virus',
    'Bacteria',
    'Algae',
    'Fungi',
    'Lichens',
    'Bryophyta',
    'Pteriodophyta',
    'Gymnosperms',
    'Morphology of Angiosperm',
    'Taxonomy of Angiosperm',
    'Reproduction of Flowering Plants',
    'Ecology',
    'Application of Biology'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UnitTiles(
        tileTitles: botanyUnitsList,
        title: 'Botany',
        routeTiles: botanyUnitsRoute,
      ),
    );
  }
}
