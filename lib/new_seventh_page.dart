import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class NewSeventhPage extends StatelessWidget {
   NewSeventhPage({super.key});

  final List<String> contacts = [
    'John Smith',
    'Jane Doe',
    'Bob Johnson',
    'Mary Jones',
    'Tom Williams'
        'John Smith',
    'Jane Doe',
    'Bob Johnson',
    'Mary Jones',
    'Tom Williams',
    'John Smith',
    'Jane Doe',
    'Bob Johnson',
    'Mary Jones',
    'Tom Williams',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: const Text('Sliver Navigation Bar'),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return ListTile(
                    title: Text(contacts[index]),
                    leading: Icon(Icons.person),
                  );

                    },
                childCount: contacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
