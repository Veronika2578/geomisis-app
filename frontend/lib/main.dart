import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ProviderScope(child: GeomisisApp()));
}

class GeomisisApp extends StatelessWidget {
  const GeomisisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEOMISIS',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}
