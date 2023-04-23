import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  double _sliderValue = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Slider value: $_sliderValue'),
            SizedBox(height: 16),
            CupertinoSlider(
              value: _sliderValue,
              min: 0,
              max: 1,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
