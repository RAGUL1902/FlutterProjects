import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.indigo[400],
      ),
      body : Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text('one'),
              color: Colors.cyan[300],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text('two'),
              color: Colors.cyan[400],),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              child: Text('three'),
              color: Colors.cyan[500],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.indigo[500],
        child: Text('Click'),
      ),
    );
  }
}


