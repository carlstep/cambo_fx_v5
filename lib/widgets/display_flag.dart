// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cambo_fx_v5/widgets/displayflag_modal_bottom_sheet.dart';

class DisplayFlag extends StatefulWidget {
  final String countryName;

  const DisplayFlag({
    Key? key,
    required this.countryName,
  }) : super(key: key);

  @override
  State<DisplayFlag> createState() => _DisplayFlagState();
}

class _DisplayFlagState extends State<DisplayFlag> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (BuildContext context) {
              return const DisplayFlagModal();
            },
          );
        });
        widget.countryName;
      },
      child: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage('assets/flags/${widget.countryName}.png'),
      ),
    );
  }
}
