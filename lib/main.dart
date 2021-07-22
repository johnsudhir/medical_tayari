import 'package:flutter/material.dart';
import 'package:medical_tayari/Biology/Botany/botany_units.dart';
import 'package:medical_tayari/Biology/Zoology/zoology_units.dart';
import 'package:medical_tayari/paper_collection/Collections.dart';
import 'package:medical_tayari/physics/Electricity_Magnetism/electromagnetism_chapters.dart';
import 'package:medical_tayari/physics/Electrostatics/electrostatics_chapters.dart';
import 'package:medical_tayari/physics/Heat_and_Thermo/heat_and_thermo_chapters.dart';
import 'package:medical_tayari/physics/Mechanics/mechanics_chapters.dart';
import 'package:medical_tayari/physics/Modern_Physics/modern_physics_chapters.dart';
import 'package:medical_tayari/physics/Optics/optics_chapters.dart';
import 'package:medical_tayari/physics/Wave_Theory_Sound/wave_sound_chapters.dart';
import 'package:medical_tayari/physics/physics_units.dart';

void main() {
  
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Medical Preparation',
        theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0A0E21),
          backgroundColor: Color(0xFFF252B50),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
        ),
        routes: {
          Collections.collection: (context) => Collections(),
          PhysicsUnits.physics: (context) => PhysicsUnits(),
          ZoologyUnits.zoologyUnits: (context) => ZoologyUnits(),
          BotanyUnits.botanyUnits: (context) => BotanyUnits(),
          MechanicsChaptersList.mechanicsChapters: (context) =>
              MechanicsChaptersList(),
          ThermoDynamicsChapterList.thermodynamicsChapters: (context) =>
              ThermoDynamicsChapterList(),
          SoundAndWaveChaptersList.waveTheoryChapters: (context) =>
              SoundAndWaveChaptersList(),
          OpticsChaptersList.opticsChapters: (context) => OpticsChaptersList(),
          ElectroMagnetismChaptersList.electroMagnetismChapters: (context) =>
              ElectroMagnetismChaptersList(),
          ElectroStatChaptersList.electroStatChapters: (context) =>
              ElectroStatChaptersList(),
          ModernPhysicsChaptersList.modernPhysicsChapters: (context) =>
              ModernPhysicsChaptersList(),
        },
        initialRoute: Collections.collection,
      )
  );
}