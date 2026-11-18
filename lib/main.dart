import 'package:flutter/material.dart';

import 'screens/harvest_screen.dart';
import 'screens/home_screen.dart';
import 'screens/pond_screen.dart';
import 'screens/species_screen.dart';
import 'theme.dart';
import 'widgets.dart';

void main() {
  runApp(const AquaFarmApp());
}

class AquaFarmApp extends StatelessWidget {
  const AquaFarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AquaFarm Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Segoe UI',
        scaffoldBackgroundColor: AquaColors.surface,
        colorScheme: ColorScheme.fromSeed(seedColor: AquaColors.primary),
        splashFactory: InkRipple.splashFactory,
      ),
      home: const AquaShell(),
    );
  }
}

class AquaShell extends StatefulWidget {
  const AquaShell({super.key});

  @override
  State<AquaShell> createState() => _AquaShellState();
}

class _AquaShellState extends State<AquaShell> {
  int _index = 0;

  static const _subtitles = [
    'CARP AQUACULTURE ADVISOR',
    'SPECIES AND NURSERY',
    'SCIENTIFIC POND MANAGEMENT',
    'HEALTH AND HARVEST',
  ];

  void _open(int index) => setState(() => _index = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AquaColors.mist,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: AquaColors.surface,
              boxShadow: [BoxShadow(color: Color(0x14001E31), blurRadius: 24)],
            ),
            child: Column(
              children: [
                AquaAppBar(subtitle: _subtitles[_index]),
                Expanded(
                  child: IndexedStack(
                    index: _index,
                    children: [
                      HomeScreen(onOpen: _open),
                      const SpeciesScreen(),
                      const PondScreen(),
                      const HarvestScreen(),
                    ],
                  ),
                ),
                BottomNav(index: _index, onSelect: _open),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
