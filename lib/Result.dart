import 'package:flutter/material.dart';


class Result extends StatefulWidget {

  String value;

  Result(this.value);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {

    var _imagemResult;

    if(widget.value == "cara"){
      _imagemResult = "assets/images/moeda_cara.png";
    }else{
      _imagemResult = "assets/images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(_imagemResult),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("assets/images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
