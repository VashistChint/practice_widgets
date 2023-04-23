import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewSixthPage extends StatelessWidget {
  const NewSixthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Scrollable list of items with long press context menu
              ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onLongPress: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (BuildContext context) {
                          return CupertinoActionSheet(
                            title: Text('Select an option'),
                            actions: [
                              CupertinoActionSheetAction(
                                child: Text('Option 1'),
                                onPressed: () {
                                  Navigator.pop(context, 'Option 1');
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: Text('Option 2'),
                                onPressed: () {
                                  Navigator.pop(context, 'Option 2');
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: Text('Option 3'),
                                onPressed: () {
                                  Navigator.pop(context, 'Option 3');
                                },
                              ),
                            ],
                            cancelButton: CupertinoActionSheetAction(
                              child: Text('Cancel'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          );
                        },
                      );
                    },
                    child: ListTile(
                      title: Text('Item $index'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
