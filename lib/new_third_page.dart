import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewThirdPage extends StatelessWidget {
  const NewThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => FullScreenTransition()),
          );
        },
        child: const Center(
          child: Text('Tap anywhere to open full-screen transition'),
        ),
      ),
    );
  }
}

class FullScreenTransition extends StatelessWidget {
  const FullScreenTransition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CupertinoButton(
          child: const Text('Close Full-Screen Transition'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }
}
