import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'next_page.dart';

class NewEighthPage extends StatelessWidget {
  const NewEighthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('New Eighth Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Go to next page'),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute(
                builder: (BuildContext context) => const NextPage(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool linearTransition = true; // Or false, depending on your requirement.

    return  CupertinoPageTransition(
      primaryRouteAnimation: Tween<double>(
        begin: 1.0,
        end: 0.0,
      ).animate(CurvedAnimation(
        parent: ModalRoute.of(context)!.animation!,
        curve: Curves.easeInOut,
      )),
      secondaryRouteAnimation: Tween<double>(
        begin: 0.0,
        end: -1.0,
      ).animate(CurvedAnimation(
        parent: ModalRoute.of(context)!.secondaryAnimation!,
        curve: Curves.easeInOut,
      )),
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('Next Page'),
        ),
        child: Center(
          child: Text('This is the next page.'),
        ),
      ),
      linearTransition: true,
    );
  }
}

