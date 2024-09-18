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
        title: Text('Scaffold Widget Explained'),
        backgroundColor: Colors.grey.shade200,

      ),

      backgroundColor: Colors.grey.shade50,

      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle),
                label: 'Profile'
            ),
          ]
      ),

      bottomSheet: BottomSheet(
        onClosing: () {

        }, builder: (context) {
        return Container(
          height: 500,
          width: double.infinity,
          color: Colors.black87,
        );
      },
      ),



      drawer: Container(
        height: double.infinity,
        width: 200,
        color: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent.shade700,

        onPressed: () {

        },
        child: Icon(Icons.camera),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Welcome to Flutter Course!', style: TextStyle(
                fontSize: 25
            ),),
          )
        ],
      ),
    );

  }
}
