import 'package:flutter/material.dart';

class Result extends StatelessWidget {


  final int result;

  final Function resetHandler;

  Result(this.result, this.resetHandler);

  String get resultPhrase{
    var resultText = 'Congratulations, You done the test';
    if (result <=8){
      resultText = "You are awesome and innocent";
    }
    else if(result<=12) {
      resultText = "Pretty Likeable";
    }
    else if(result<=16) {
      resultText = "You are strange?";
    }
    else{
      resultText = "You are bad";
    }
    return resultText;

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget>[Text(
      resultPhrase, 
      style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,),
      FlatButton(
        onPressed: resetHandler, 
        child: Text('Restart Quiz'),
        textColor: Colors.blue,
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue))),
        ],
      ),
    );
  }
}