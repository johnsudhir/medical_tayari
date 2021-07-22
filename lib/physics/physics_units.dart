import 'package:flutter/material.dart';
import 'package:medical_tayari/models/UnitTiles.dart';
import 'package:medical_tayari/physics/Electricity_Magnetism/electromagnetism_chapters.dart';
import 'package:medical_tayari/physics/Electrostatics/electrostatics_chapters.dart';
import 'package:medical_tayari/physics/Heat_and_Thermo/heat_and_thermo_chapters.dart';
import 'package:medical_tayari/physics/Mechanics/mechanics_chapters.dart';
import 'package:medical_tayari/physics/Modern_Physics/modern_physics_chapters.dart';
import 'package:medical_tayari/physics/Optics/optics_chapters.dart';
import 'package:medical_tayari/physics/Wave_Theory_Sound/wave_sound_chapters.dart';

class PhysicsUnits extends StatelessWidget {
  static const String physics = 'PhysicsUnits';
  final List<String> unitsRoutes = [
    MechanicsChaptersList.mechanicsChapters,
    ThermoDynamicsChapterList.thermodynamicsChapters,
    SoundAndWaveChaptersList.waveTheoryChapters,
    OpticsChaptersList.opticsChapters,
    ElectroMagnetismChaptersList.electroMagnetismChapters,
    ElectroStatChaptersList.electroStatChapters,
    ModernPhysicsChaptersList.modernPhysicsChapters
  ];
  final List<String> units = [
    'Mechanics',
    'Heat and Thermodynamics',
    'Wave Theory and Sound',
    'Optics',
    'Electricity And Magnetism',
    'Electrostatics',
    'Modern Physics',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: UnitTiles(
      tileTitles: units,
      title: 'Physics',
      routeTiles: unitsRoutes,
      ),
    );
  }
}
