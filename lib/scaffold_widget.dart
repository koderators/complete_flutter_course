import 'package:flutter/material.dart';

class ScaffoldWidget extends StatefulWidget {
  const ScaffoldWidget({super.key});

  @override
  State<ScaffoldWidget> createState() => _ScaffoldWidgetState();
}

class _ScaffoldWidgetState extends State<ScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Example'),
      ),
      body: Center(
        child: Text('Hello, Flutter!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Button Pressed');
        },
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Header'),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );

  }
}
