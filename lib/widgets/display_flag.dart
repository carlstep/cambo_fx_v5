import 'package:cambo_fx_v5/widgets/displayflag_modal_bottom_sheet.dart';
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
