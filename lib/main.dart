import 'dart:math';
import 'package:flutter/material.dart';


void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int  leftdice = 1;
  int  rightdice=1;

  void changediceside()
  {
    setState(() {
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: (){
                changediceside();
              },
              child: Image.asset('images/side$leftdice.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                changediceside();
              },
              child: Image.asset('images/side$rightdice.png'),),
          ),
        ],
      ),
    );
  }
}
