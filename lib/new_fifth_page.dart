import 'package:flutter/cupertino.dart';

class NewFifthPage extends StatelessWidget {
  @override
  // ignore: overridden_fields
  final Key key;

  const NewFifthPage({required this.key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (BuildContext context) => const Center(
                child: Text('This is the Home tab.'),
              ),
            );
          case 1:
            return CupertinoTabView(
              builder: (BuildContext context) => const Center(
                child: Text('This is the Search tab.'),
              ),
            );
          case 2:
            return CupertinoTabView(
              builder: (BuildContext context) => const Center(
                child: Text('This is the Settings tab.'),
              ),
            );
          default:
            return Container();
        }
      },
    );
  }
}
