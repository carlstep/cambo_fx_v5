import 'package:flutter/material.dart';

class DisplayFlagModal extends StatefulWidget {
  const DisplayFlagModal({super.key});

  @override
  State<DisplayFlagModal> createState() => _DisplayFlagModalState();
}

class _DisplayFlagModalState extends State<DisplayFlagModal> {
  String _countryName = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 2, 20, 0),
          child: _buildFlagModalSheet(),
        ),
      ),
    );
  }

  Column _buildFlagModalSheet() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const Text('Modal BottomSheet'),
        ListTile(
          title: Text('GERMANY'),
          onTap: () => _selectFlag('germany'),
        ),
        ListTile(
          title: Text('CAMBODIA'),
          onTap: () => _selectFlag('cambodia'),
        ),
        ListTile(
          title: Text('USA'),
          onTap: () => _selectFlag('usa'),
        ),
        ListTile(
          title: Text('INDONESIA'),
          onTap: () => _selectFlag('indonesia'),
        ),
        ListTile(
          title: Text('SOUTH KOREA'),
          onTap: () => _selectFlag('south_korea'),
        ),
      ],
    );
  }

  void _selectFlag(String name) {
    Navigator.pop(context);
    setState(() {
      _countryName = name;
    });
  }
}
