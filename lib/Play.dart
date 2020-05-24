import 'package:appheadsortails/Result.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Play extends StatefulWidget {
  @override
  _PlayState createState() => _PlayState();
}

class _PlayState extends State<Play> {

  void _play(){

    var _itens = ["cara", "coroa"];
    var _number = Random().nextInt( _itens.length );

    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Result(_itens[_number])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
//      backgroundColor: Color.fromRGBO(97, 189, 134, 56),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            GestureDetector(
              onTap: _play,
              child: Image.asset("assets/images/botao_jogar.png"),
            )
          ],
        ),

      ),
    );
  }
}
