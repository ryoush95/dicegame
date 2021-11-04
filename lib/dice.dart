import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fluttertoast/fluttertoast.dart';

class Dice extends StatefulWidget {
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int ldice = 1;
  int rdice = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dice'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(32),
              child: Row(
                children: <Widget>[
                  Expanded(child: Image.asset('image/dice$ldice.png')),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Image.asset('image/dice$rdice.png'))
                ],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            ButtonTheme(
              minWidth: 100,
              height: 60,
              child: RaisedButton(
                color: Colors.orangeAccent,
                child: Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: Colors.white,
                ),
                onPressed: () {
                  int plus=0;
                  setState(() {
                    ldice = Random().nextInt(6) + 1;
                    rdice = Random().nextInt(6) + 1;
                    plus = ldice + rdice;
                    print('$plus');
                    toast("dice = {$plus}");
                  });
                }),
            )
          ],
        ),
      ),
    );
  }
}

void toast(String msgs) {
  Fluttertoast.showToast(
      msg: msgs,
      backgroundColor: Colors.black12,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM);
}
