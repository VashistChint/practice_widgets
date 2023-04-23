import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'new_fifth_page.dart';
import 'new_fourth_page.dart';
import 'new_ninth_page.dart';
import 'new_page.dart';
import 'new_first_page.dart';
import 'new_second_page.dart';
import 'new_seventh_page.dart';
import 'new_third_page.dart';
import 'new_sixth_page.dart';
import 'new_eighth_page.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {


  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }


  final ScrollController _controller = ScrollController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scrollbar(
            thumbVisibility: true,
            controller: _controller,
            child: ListView.builder(
                controller: _controller,
                itemCount: 28,
                itemBuilder: (BuildContext context, int index) {
                  if (index < 14) {
                    switch (index) {
                      case 0:
                        return Container(
                          height: 100,
                          color: Colors.white,

                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoButton(

                              onPressed: () {
                                showCupertinoModalPopup(
                                  context: context,
                                  builder: (BuildContext context) => CupertinoActionSheet(
                                    title: const Text('Cupertino context menu'),
                                    message: const Text('Select an action'),
                                    actions: <Widget>[
                                      CupertinoActionSheetAction(
                                        onPressed: () {},
                                        child: const Text('Action 1'),
                                      ),
                                      CupertinoActionSheetAction(
                                        onPressed: () {},
                                        child: const Text('Action 2'),
                                      ),
                                      CupertinoActionSheetAction(
                                        onPressed: () {},
                                        child: const Text('Action 3'),
                                      ),
                                    ],
                                    cancelButton: CupertinoActionSheetAction(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text('Cancel'),
                                    ),
                                  ),
                                );
                              },
                              child: const Text('Cupertino Action sheet'),
                            ),
                          ),
                        );
                      case 1:
                        return CupertinoAlertDialog(
                          title: const Text('Cupertino Alert Dialog'),
                          content: const Text('This is an example of a Cupertino Alert Dialog.'),
                          actions: <Widget>[
                            CupertinoDialogAction(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            CupertinoDialogAction(
                              child: const Text('OK'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );

                      case 2:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoSwitch(
                              value: false,
                              onChanged: (bool value) {},
                            ),
                          ),
                        );
                      case 3:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CupertinoActivityIndicator(),
                          ),
                        );
                      case 4:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoDatePicker(
                              mode: CupertinoDatePickerMode.date,
                              onDateTimeChanged: (DateTime newDate) {},
                            ),
                          ),
                        );

                      case 5:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoNavigationBar(
                              backgroundColor:
                              CupertinoColors.systemGrey.withOpacity(0.5),
                              middle: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('Cupertino Navigation Bar'),
                                ],
                              ),
                              leading: CupertinoNavigationBarBackButton(
                                onPressed: () {
                                  // Perform back navigation here
                                },
                              ),
                              trailing: CupertinoButton(
                                padding: const EdgeInsets.all(0),
                                onPressed: () {
                                  // Perform exit action here
                                },
                                child: const Text('Exit'),
                              ),
                            ),
                          ),
                        );


                      case 6:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: CupertinoButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return CupertinoAlertDialog(
                                        title: const Text('Cupertino Popup Surface'),
                                        content: const Text('This is a CupertinoPopupSurface'),
                                        actions: [
                                          CupertinoDialogAction(
                                            child: const Text('OK'),
                                            onPressed: () => Navigator.pop(context),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: const Text(
                                  'Cupertino Popup Surface',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                            ),
                          ),
                        );

                      case 7:
                        return ListTile(
                          title: const Text('cupertino slider'),
                          subtitle: const Text('List Tile Subtitle'),
                          trailing: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NewPage()),
                              );
                            },
                          ),
                        );
                      case 8:
                        return Container(
                          child: ListTile(
                            title: const Text(' cupertino segmented control'),
                            subtitle: const Text('List Tile Subtitle'),
                            trailing: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NewFirstPage()),
                                );
                              },
                            ),
                          ),
                        );
                      case 9:
                        return Container(
                          child: ListTile(
                            title: const Text(' cupertino sliding  segmented control'),
                            subtitle: const Text('List Tile Subtitle'),
                            trailing: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NewSecondPage()),
                                );
                              },
                            ),
                          ),
                        );
                      case 10:
                        return Container(
                          child: ListTile(
                            title: const Text('List Tile 15'),
                            trailing: IconButton(
                              icon:Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  NewSixthPage()),
                                );
                              },
                            ),
                          ),
                        );
                      case 11:
                        return Container(
                          child: GestureDetector(
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
                            child: CupertinoButton(
                              child: Text('Show Modal Context Menu'),
                              onPressed: () {},
                            ),
                          ),
                        );
                      case 12:
                        return Container(
                          child: ListTile(
                            title: const Text('Page Transition'),
                            trailing: IconButton(
                              icon:Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  NewEighthPage()),
                                );
                              },
                            ),
                          ),
                        );
                      case 13:
                        return ListTile(
                          title: const Text('cupertino Dialog Action'),
                          subtitle: const Text('List Tile Subtitle'),
                          trailing: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NewNinthPage()),
                              );
                            },
                          ),
                        );

                      default:
                        return Container();
                    }
                  } else if (index < 15) {
                    return Container(
                      height: 100,
                      color: index.isEven ? Colors.amberAccent : Colors
                          .blueAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CupertinoButton(
                          onPressed: () {},
                          child: Text('Index $index'),
                        ),
                      ),
                    );
                  } else {
                    switch (index) {
                      case 15:
                        return Container(
                          child: ListTile(
                            title: const Text('ScrollBar'),
                            trailing: IconButton(
                              icon:Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => NewSixthPage()),
                                );
                              },
                            ),
                          ),
                        );
                      case 16:
                        return Container(
                          child: ListTile(
                            title: const Text('Full Screen transition '),
                            subtitle: const Text('Primary and Secondary route animations '),
                            trailing: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const NewThirdPage()),
                                );
                              },
                            ),
                          ),
                        );

                      case 17:
                        return Container(
                          child: ListTile(
                            title: const Text('Sliver Navigation Bar'),
                            trailing: IconButton(
                              icon:Icon(Icons.arrow_forward_ios),
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => NewSeventhPage()),
                                );
                              },
                            ),
                          ),
                        );

                      case 18:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: CupertinoButton(
                                child: const Text('Cupertino Button Press me'),
                                onPressed: () {
                                  // Handle button press here
                                },
                              ),
                            ),
                          ),
                        );

                      case 19:
                        return ListTile(
                          title: const Text('PopUpSurface'),
                          subtitle: const Text('List Tile Subtitle'),
                          trailing: IconButton(
                            icon: const Icon(Icons.arrow_forward),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const NewFourthPage()),
                              );
                            },
                          ),
                        );

                      case 20:
                        return Container(
                          child: ListTile(
                            title: const Text('Cupertino Tab Bar'),
                            subtitle: const Text('List Tile Subtitle'),
                            trailing: IconButton(
                              icon: const Icon(Icons.arrow_forward),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => NewFifthPage(key: UniqueKey())),
                                );

                              },
                            ),
                          ),
                        );
                      case 21:
                        return Container(
                          height: 100,
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoTextField(
                              controller: _textEditingController,
                              placeholder: 'Enter text here',
                            ),
                          ),
                        );

                      case 22:
                        return Container(
                          height: 200,
                          width: 200,
                          margin: const EdgeInsets.all(35),
                          alignment: Alignment.topCenter,
                          child: CupertinoListSection(
                            header: const Text('My List Section'),
                            children: const <CupertinoListTile>[
                              CupertinoListTile(
                                title: Text('List Tile 1'),
                                leading: SizedBox(
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              CupertinoListTile(
                                title: Text('List Tile 2'),
                                leading: SizedBox(
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              CupertinoListTile(
                                title: Text('List Tile 3'),
                                leading: SizedBox(
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                            ],
                          ),
                        );


                      case 23:
                        return Container(
                          height: 100,
                          color: Colors.blueGrey,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoListTile(
                              leading: const Icon(CupertinoIcons.book),
                              title: const Text('Cupertino List Tile'),
                              subtitle: const Text('This is a subtitle'),
                              trailing: const Icon(CupertinoIcons.forward),
                              onTap: () {

                              },
                            ),
                          ),
                        );

                      case 24:
                        return Container(
                            height: 100,
                            color: Colors.purpleAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CupertinoTimerPicker(
                                mode: CupertinoTimerPickerMode.hms,
                                onTimerDurationChanged: (Duration duration) {
                                  // Do something with the selected duration
                                },
                              ),
                            )
                        );
                      default:
                        return Container();
                    }
                  }
                }
            )


        )
    );
  }
}
// Cupertino Dialog action,

