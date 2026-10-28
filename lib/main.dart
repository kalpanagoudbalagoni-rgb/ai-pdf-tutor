import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const AIPdfTutorApp());
}

class AIPdfTutorApp extends StatelessWidget {
  const AIPdfTutorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI PDF Tutor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}