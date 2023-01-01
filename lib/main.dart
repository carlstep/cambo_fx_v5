import 'package:flutter/material.dart';

import './widgets/display_card.dart';
import './widgets/input_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  bool _isSelectedA = false;
  bool _isSelectedB = false;
  bool _isSelectedC = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambo Fx'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey[100],
              ),
              // margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelectedA = !_isSelectedA;
                          _isSelectedB = false;
                          _isSelectedC = false;
                        });
                      },
                      child: _isSelectedA
                          ? const InputCard(
                              countryName: 'cambodia',
                            )
                          : const DisplayCard(countryName: 'cambodia'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelectedA = false;
                          _isSelectedB = !_isSelectedB;
                          _isSelectedC = false;
                        });
                      },
                      child: _isSelectedB
                          ? const InputCard(
                              countryName: 'usa',
                            )
                          : const DisplayCard(countryName: 'usa'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelectedA = false;
                _isSelectedB = false;
                _isSelectedC = !_isSelectedC;
              });
            },
            child: _isSelectedC
                ? const InputCard(
                    countryName: 'uk',
                  )
                : const DisplayCard(countryName: 'uk'),
          ),
          const SizedBox(
            height: 120,
          ),
        ],
      ),
    );
  }
}
