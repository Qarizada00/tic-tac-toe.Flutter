// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, no_logic_in_create_state, must_be_immutable, use_key_in_widget_constructors, void_checks

import 'package:board/players.info.dart';
import 'package:flutter/material.dart';

const Color winColor = Colors.red;
const Color defColor = Colors.blue;

class Screen3 extends StatefulWidget {
  String player1, player2;
  Screen3({required this.player1, required this.player2});

  @override
  _Screen3State createState() =>
      _Screen3State(player1: player1, player2: player2);
}

class _Screen3State extends State<Screen3> {
  String player1, player2;
  _Screen3State({required this.player1, required this.player2});

  String b1 = '';
  String b2 = '';
  String b3 = '';
  String b4 = '';
  String b5 = '';
  String b6 = '';
  String b7 = '';
  String b8 = '';
  String b9 = '';

  int playerX = 0;
  int playerO = 0;
  int win = 0;
  int inPlay = 1;

  bool gFinish = false;

  void hwoWin() {
    if (b1 == b2 && b1 == b3 && b1.isNotEmpty) {
      if (b1 == 'X') {
        gFinish = true;
        win = 1;
        playerX += 3;
        inPlay *= -1;
        _1winalert(context);
      } else {
        inPlay *= -1;
        gFinish = true;
        win = -1;
        playerO += 3;
        _2winalert(context);
      }
    } else if (b4 == b5 && b4 == b6 && b4.isNotEmpty) {
      if (b4 == 'X') {
        _1winalert(context);
        inPlay *= -1;
        gFinish = true;
        win = 1;
        playerX += 3;
      } else {
        _2winalert(context);
        inPlay *= -1;
        gFinish = true;
        win = -1;
        playerO += 3;
      }
    } else if (b7 == b8 && b7 == b9 && b7.isNotEmpty) {
      if (b7 == 'X') {
        _1winalert(context);
        gFinish = true;
        win = 1;
        playerX += 3;

        inPlay *= -1;
      } else {
        _2winalert(context);
        gFinish = true;
        win = -1;
        playerO += 3;
        inPlay *= -1;
      }
    } else if (b1 == b4 && b1 == b7 && b1.isNotEmpty) {
      if (b1 == 'X') {
        _1winalert(context);
        gFinish = true;
        win = 1;
        playerX += 3;
        inPlay *= -1;
      } else {
        _2winalert(context);
        gFinish = true;
        win = -1;
        playerO += 3;
        inPlay *= -1;
      }
    } else if (b2 == b5 && b2 == b8 && b2.isNotEmpty) {
      if (b2 == 'X') {
        _1winalert(context);
        gFinish = true;
        win = 1;
        playerX += 3;
        inPlay *= -1;
      } else {
        _2winalert(context);
        gFinish = true;
        win = -1;
        playerO += 3;
        inPlay *= -1;
      }
    } else if (b3 == b6 && b3 == b9 && b3.isNotEmpty) {
      if (b3 == 'X') {
        _1winalert(context);
        gFinish = true;
        inPlay *= -1;
        win = 1;
        playerX += 3;
      } else {
        _2winalert(context);
        gFinish = true;
        inPlay *= -1;
        win = -1;
        playerO += 3;
      }
    } else if (b1 == b5 && b1 == b9 && b1.isNotEmpty) {
      if (b1 == 'X') {
        _1winalert(context);
        gFinish = true;
        inPlay *= -1;
        win = 1;
        playerX += 3;
      } else {
        _2winalert(context);
        gFinish = true;
        win = -1;
        inPlay *= -1;
        playerO += 3;
      }
    } else if (b3 == b5 && b3 == b7 && b3.isNotEmpty) {
      if (b3 == 'X') {
        _1winalert(context);
        gFinish = true;
        inPlay *= -1;
        win = 1;
        playerX += 3;
      } else {
        _2winalert(context);
        gFinish = true;
        inPlay *= -1;
        win = -1;
        playerO += 3;
      }
    } else if (b1.isNotEmpty &&
        b2.isNotEmpty &&
        b3.isNotEmpty &&
        b4.isNotEmpty &&
        b5.isNotEmpty &&
        b6.isNotEmpty &&
        b7.isNotEmpty &&
        b8.isNotEmpty &&
        b9.isNotEmpty) {
      _drawalert(context);
      gFinish = true;
      win = 0;
      playerX++;
      playerO++;
    }
  }

  int _counter = 1;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void resetGame() {
    setState(() {
      gFinish = false;

      b1 = '';
      b2 = '';
      b3 = '';
      b4 = '';
      b5 = '';
      b6 = '';
      b7 = '';
      b8 = '';
      b9 = '';
    });
  }

  void resetAllGame() {
    setState(() {
      gFinish = false;
      inPlay = 1;
      playerX = 0;
      playerO = 0;
      _counter = 1;
      b1 = '';
      b2 = '';
      b3 = '';
      b4 = '';
      b5 = '';
      b6 = '';
      b7 = '';
      b8 = '';
      b9 = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.green,
        title: Text(
          'Game Panel',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  player1 + ' Score: ',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$playerX',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  player2 + ' Score: ',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$playerO',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
                height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Round: $_counter',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (inPlay == 1) ...[
                    RichText(
                      text: TextSpan(
                        text: 'Turn: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: player1,
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: ' (X)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue)),
                        ],
                      ),
                    )
                  ] else ...[
                    RichText(
                      text: TextSpan(
                        text: 'Turn: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        children: <TextSpan>[
                          TextSpan(
                            text: player2,
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(
                              text: ' (O)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red)),
                        ],
                      ),
                    )
                  ]
                ]),
            const Divider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.grey,
                height: 20),
            Container(
              height: MediaQuery.of(context).size.width / 1.1,
              width: MediaQuery.of(context).size.height / 1.0,
              margin: const EdgeInsets.only(top: 5, left: 5, right: 5),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b1.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b1 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b1 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b1 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b1 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b2.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b2 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b2 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b2 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b2 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b3.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b3 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b3 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b3 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b3 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b4.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b4 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b4 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b4 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b4 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b5.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b5 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b5 = 'O';
                                      inPlay *= -1;
                                    }

                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b5 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b5 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b6.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b6 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b6 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b6 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b6 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b7.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b7 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b7 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b7 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b7 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b8.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b8 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b8 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b8 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b8 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(2),
                            child: MaterialButton(
                              height: double.infinity,
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (b9.isEmpty && gFinish == false) {
                                    if (inPlay == 1) {
                                      b9 = 'X';
                                      inPlay *= -1;
                                    } else {
                                      b9 = 'O';
                                      inPlay *= -1;
                                    }
                                    hwoWin();
                                  }
                                });
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    if (b9 == 'X') ...[
                                      Text(
                                        'X',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ] else if (b9 == 'O') ...[
                                      Text(
                                        'O',
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 80,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
                thickness: 1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
                height: 25),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    _incrementCounter();
                    resetAllGame();
                  },
                  child: const Text('Reset',
                      style: TextStyle(color: Colors.black)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  onPressed: () {
                    _showDialog(context);
                  },
                  child:
                      const Text('Exit', style: TextStyle(color: Colors.black)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _showDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Are You Sure To exit?"),
            actions: <Widget>[
              MaterialButton(
                child: Text('Yes'),
                onPressed: () {
                  if (playerX > playerO) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Screen2(
                                player1: player1,
                                Score: playerX,
                                Char: 'X',
                              )),
                    );
                  } else if (playerX < playerO) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Screen2(
                                player1: player2,
                                Score: playerO,
                                Char: 'O',
                              )),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Screen2(
                                player1: player1,
                                Score: playerX,
                                Char: 'X',
                              )),
                    );
                  }
                },
              ),
              MaterialButton(
                child: Text('No'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  _1winalert(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: Text('Congratulations !!!'),
            children: [
              SimpleDialogOption(
                child: Text(
                  player1 + ' won (+3 Points)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "");
                  _incrementCounter();
                  resetGame();
                },
                child: const Text('ok'),
              ),
            ],
            elevation: 10,
            //backgroundColor: Colors.green,
          ),
        );
      },
    );
  }

  _2winalert(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: Text('Congratulations !!!'),
            children: [
              SimpleDialogOption(
                child: Text(
                  player2 + ' won (+3 Points)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "");
                  _incrementCounter();
                  resetGame();
                },
                child: const Text('ok'),
              ),
            ],
            elevation: 10,
            //backgroundColor: Colors.green,
          ),
        );
      },
    );
  }

  _drawalert(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: SimpleDialog(
            title: Text('Draw !!!'),
            children: [
              SimpleDialogOption(
                child: const Text(
                  'One Point for each player',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "");
                  _incrementCounter();
                  resetGame();
                },
                child: const Text('ok'),
              ),
            ],
            elevation: 10,
            //backgroundColor: Colors.green,
          ),
        );
      },
    );
  }
}
