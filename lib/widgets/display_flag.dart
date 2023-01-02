import 'package:flutter/material.dart';

class DisplayFlag extends StatelessWidget {
  final String countryName;

  const DisplayFlag({
    required this.countryName,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/flags/$countryName.png'),
    );
  }
}
