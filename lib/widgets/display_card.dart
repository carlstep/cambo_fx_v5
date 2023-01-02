import 'package:flutter/material.dart';

import './display_flag.dart';

class DisplayCard extends StatefulWidget {
  final String countryName;

  const DisplayCard({required this.countryName});

  @override
  State<DisplayCard> createState() => _DisplayCardState();
}

class _DisplayCardState extends State<DisplayCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      width: 300,
      height: 110,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 30,
            child: Card(
              elevation: 8,
              child: Container(
                width: 260,
                height: 60,
                child: const Center(
                  child: Text(
                    'display field',
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 0,
            child: DisplayFlag(countryName: widget.countryName),
          ),
        ],
      ),
    );
  }
}
