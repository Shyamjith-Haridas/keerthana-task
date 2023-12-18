import 'package:flutter/material.dart';

class SwitchExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Switch in AlertDialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return MyAlertDialog();
              },
            );
          },
          child: Text('Open AlertDialog'),
        ),
      ),
    );
  }
}

class MyAlertDialog extends StatefulWidget {
  @override
  _MyAlertDialogState createState() => _MyAlertDialogState();
}

class _MyAlertDialogState extends State<MyAlertDialog> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Switch in AlertDialog'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Toggle the switch:'),
          Row(
            children: [
              Text("UPI"),
              Switch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Handle the action here
            Navigator.of(context).pop();
          },
          child: Text('Close'),
        ),
      ],
    );
  }
}
