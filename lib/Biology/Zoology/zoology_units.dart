import 'package:medical_tayari/models/UnitTiles.dart';
import 'package:flutter/material.dart';
class ZoologyUnits extends StatelessWidget {
  static const String zoologyUnits = 'ZoologyUnits';
  final List<String> zoologyUnitsRoute = [];
  final List<String> zoologyUnitsList = [
    'Classification of Animals',
    'Protozoa',
   'Paramecium',
    'Plasmodium',
    'Coelenterata',
    'Platyhelminthes',
    'Nemathelminthes',
    'Annelida',
    'Arthopoda',
    'Mollusca',
    'Echinodermata',
    'Chordata',
    'Earthworm',
    'Frog',
    'Animal Tissue',
    'Endocrinology of Mammals',
    'Digestive System And Nutrition',
    'Respiratory System',
    'Cardiovascular System And Blood',
    'Nervous System',
    'Sense Organs',
    'Reproductive System',
    'Excretory System',
    'Human Diseases and Immunology',
    'Embryonic Development of Animals',
    'Rabbit',
    'Rabbit Bone',
    'Origin and Evolution of Life',
    'Human Evolution',
    'Animal Behaviour and Animal Adaptation'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: UnitTiles(
        tileTitles: zoologyUnitsList,
        title: 'Zoology',
        routeTiles: zoologyUnitsRoute,
      ),
    );
  }
}
