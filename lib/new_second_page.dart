import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewSecondPage extends StatelessWidget {
  const NewSecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body:  Center(
        child: SizedBox(
          width: 300,
          child: CupertinoSlidingSegmentedControl(
    children:  const {
    0: Text('Segment 1'),
    1: Text('Segment 2'),
    2: Text('Segment 3'),
  },
            onValueChanged: (int? newValue){

            },
            groupValue: 0,
      ),
        ),
    ),
    );
  }
}