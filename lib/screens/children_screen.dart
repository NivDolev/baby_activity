import 'package:flutter/material.dart';
import 'package:baby_activity/screens/add_child_screen.dart';

class ChildrenScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _ChildrenScreenState createState() => _ChildrenScreenState();
}

class _ChildrenScreenState extends State<ChildrenScreen> {
  final List<String> children = [
    'child 1',
    'child 2',
    'child 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: /**/ Text('Baby List')),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(title: Text(children[index]));
          },
          itemCount: children.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Open "Add Child" screen');
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddChildScreen(),
              ),
            ),
          );
        },
      ),
    );
  }
}
