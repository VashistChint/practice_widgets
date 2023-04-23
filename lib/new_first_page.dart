import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewFirstPage extends StatelessWidget {
  const NewFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: CupertinoSegmentedControl(
          children: const {
            0: Text('Segment 1'),
            1: Text('Segment 2'),
            2: Text('Segment 3'),
          },
          onValueChanged: (int newValue) {
            // Handle segment value changes here
          },
          groupValue: 0, // Set the initially selected segment index
        ),
      ),

    );
  }
}
