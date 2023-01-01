import 'package:flutter/material.dart';

class InputCard extends StatefulWidget {
  final String countryName;

  const InputCard({required this.countryName});

  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  final TextEditingController _inputController = TextEditingController();
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
              elevation: 12,
              child: Container(
                width: 260,
                height: 60,
                child: Center(
                  child: TextField(
                    controller: _inputController,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    style: const TextStyle(fontSize: 30),
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
              backgroundImage:
                  AssetImage('assets/flags/${widget.countryName}.png'),
            ),
          ),
        ],
      ),
    );
  }
}
