import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewFourthPage extends StatelessWidget {
  const NewFourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: CupertinoButton(
          child: const Text('Open Modal Bottom Sheet'),
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (BuildContext builder) {
                return CupertinoActionSheet(
                  title: const Text('Select an option'),
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () {
                        // Do something
                        Navigator.of(context).pop();
                      },
                      child: const Text('Option 1'),
                    ),
                    CupertinoActionSheetAction(
                      onPressed: () {
                        // Do something
                        Navigator.of(context).pop();
                      },
                      child: const Text('Option 2'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

