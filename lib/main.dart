import 'package:cambo_fx_v5/screens/conversion_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ConversionScreen(),
    );
  }
}
