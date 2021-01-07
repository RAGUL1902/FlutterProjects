import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StudentId(),
  ));
}

class StudentId extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Student Id'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body:Padding(
        padding: EdgeInsets.fromLTRB(40, 50, 40, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/RAGUL N S.jpg'),
                radius: 80.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'RAGUL N S',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'D.O.B',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '19/02/2002',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.deepOrange[300],
                ),
                SizedBox(width: 10.0),
                Text(
                  '191cs146.ragulns@nitk.edu.in',
                  style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    color: Colors.deepOrange[300],
                  ),
                ),
              ],
            )
          ],
        ),
      ) ,

    );
  }
}
