// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, non_constant_identifier_names, no_logic_in_create_state, avoid_unnecessary_containers

import 'package:board/game_panel.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
//add some shit here
  String player1, Char;
  int Score;

  Screen2({required this.player1, required this.Score, required this.Char});

  @override
  _Screen2State createState() =>
      _Screen2State(player1: player1, Score: Score, Char: Char);
}

class _Screen2State extends State<Screen2> {
  final Controller1 = TextEditingController();
  final Controller2 = TextEditingController();

  String player1, Char;
  int Score;
  _Screen2State(
      {required this.player1, required this.Score, required this.Char});

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    Controller1.dispose();
    super.dispose();
    Controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.green,
        title: Text(
          'Players Panel',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          children: [



            Container(
              child: Container(
                margin: EdgeInsets.all(11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.person_pin_rounded), onPressed: () {}),
                    Expanded(
                      child: TextField(
                        controller: Controller1,
                        decoration: InputDecoration(
                          helperText: 'Player1',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.circle,
                        color: Colors.blueAccent,
                        size: 35,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),




            Container(
              decoration: BoxDecoration(),
              child: Center(
                child: Column(
                  // add Column
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(
                          Icons.swap_vert_sharp,
                          size: 40,
                        ),
                        onPressed: () {
                          var temp = Controller2.value;
                          Controller2.value = Controller1.value;
                          Controller1.value = temp;
                        }),
                  ],
                ),
              ),
            ),





            
            Container(
              child: Container(
                margin: EdgeInsets.all(11.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.person_pin_rounded), onPressed: () {}),
                    Expanded(
                      child: TextField(
                        controller: Controller2,
                        decoration: InputDecoration(
                          helperText: 'Player2',
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 35,
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            const Divider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
                height: 5),
            Text(
              'Heros List: ',
              style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),
            ),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      width: double.infinity,
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                      color: Theme.of(context).errorColor,
                    ),
                    child: Column(
                      children: [
                        if (Char != '' && Char == 'X') ...{
                          ListTile(
                            leading: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 30,
                            ),
                            title: Text(
                              player1,
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text(
                              Char,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              Score.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            dense: false,
                          ),
                        },
                        if (Char != '' && Char == 'O') ...{
                          ListTile(
                            leading: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 30,
                            ),
                            title: Text(
                              player1,
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text(
                              Char,
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Text(
                              Score.toString(),
                              style: TextStyle(fontSize: 20),
                            ),
                            dense: false,
                          ),
                        },
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Screen3(
                      player1: Controller1.text,
                      player2: Controller2.text,
                    )),
          );
        },
        child: const Icon(
          Icons.arrow_forward,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
