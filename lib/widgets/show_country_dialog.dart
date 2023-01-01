import 'package:flutter/material.dart';

class CountryDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ButtonWidget(
      text: 'Simple Dialog',
      onClicked: () => showCountryDialog(context),
    );

    void showCountryDialog(BuildContext context) =>
        showDialog(context: context,
        child: SimpleDialog(
          title: Text('Select Country'),
          children: [
            SimpleDialogOption(
              child: Text('Option 1'),
            )
          ],
        ) 
        builder: builder);
  }
}
