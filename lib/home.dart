// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:board/players.info.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Welcome to TTT',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Image.asset(
                  'images/background.png',
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 162, left: 145),
                child: Image.asset(
                  'images/words.png',
                  scale: 3.9,
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 270.0, left: 155, right: 155),
                decoration:
                    BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 420.0, left: 165, right: 155),
                child: Text(
                  'V 1.0',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(top: 550, left: 110),
                alignment: Alignment.bottomCenter,
                textStyle: const TextStyle(
                  fontSize: 40,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Screen2(
                        player1: '',
                        Score: 0,
                        Char: '',
                      );
                    },
                  ),
                );
              },
              child: const Text(
                'Continue >>',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
