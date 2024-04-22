import 'package:flutter/material.dart';
import 'package:sutoriapp/ui/home_screen.dart';

void main() {
  runApp(SutoriApp());
}

class SutoriApp extends StatelessWidget {
  const SutoriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Sutori App', home: HomeScreen());
  }
}
