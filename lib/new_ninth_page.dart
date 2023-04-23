import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NewNinthPage extends StatelessWidget {
  const NewNinthPage({Key? key}) : super(key: key);

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Cupertino Dialog Example'),
          content: const Text('This is a Cupertino dialog.'),
          actions: <Widget>[
            CupertinoDialogAction(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoDialogAction(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('New Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Show Dialog'),
          onPressed: () => _showDialog(context),
        ),
      ),
    );
  }
}

void main() {
  runApp(CupertinoApp(
    title: 'My App',
    home: NewNinthPage(),
  ));
}