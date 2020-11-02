import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blueAccent,
        ),
        body: askpage(),
      ),
    ),
  );
}

class askpage extends StatefulWidget {
  @override
  _askpageState createState() => _askpageState();
}

class _askpageState extends State<askpage> {
  int ballAnswer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  ballAnswer = Random().nextInt(5)+1;
                });
              },
                child: Image.asset('images/ball$ballAnswer.png'),
            ),

          ),
        ],
      ),
    );
  }
}
