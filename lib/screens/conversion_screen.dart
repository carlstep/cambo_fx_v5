import 'package:cambo_fx_v5/widgets/display_card.dart';
import 'package:cambo_fx_v5/widgets/input_card.dart';
import 'package:flutter/material.dart';

class ConversionScreen extends StatefulWidget {
  const ConversionScreen({
    super.key,
  });

  @override
  State<ConversionScreen> createState() => _ConversionScreenState();
}

class _ConversionScreenState extends State<ConversionScreen> {
  bool _isSelectedA = false;
  bool _isSelectedB = false;
  bool _isSelectedC = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cambo Fx'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey[100],
                ),
                // margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    children: [
                      SizedBox(
                        child: GestureDetector(
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
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        child: GestureDetector(
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: GestureDetector(
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
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueGrey[100],
                ),
                child: Text('In App Advertisement'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
