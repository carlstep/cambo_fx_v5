import 'package:flutter/material.dart';

class DisplayFlag extends StatefulWidget {
  final String countryName;

  const DisplayFlag({
    required this.countryName,
  });

  @override
  State<DisplayFlag> createState() => _DisplayFlagState();
}

class _DisplayFlagState extends State<DisplayFlag> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO - create function to select countryName from a list of countries.
        print(widget.countryName);
      },
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/flags/${widget.countryName}.png'),
      ),
    );
  }
}
