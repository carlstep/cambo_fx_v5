import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final String countryName;

  const DisplayCard({required this.countryName});

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
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/flags/$countryName.png'),
            ),
          ),
        ],
      ),
    );
  }
}
