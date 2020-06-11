import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

 final Function selectHandler;
 final String answerTxt;

 Answer(this.selectHandler,this.answerTxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.black38,
        child:
              Text(answerTxt, 
              style:TextStyle(fontWeight: FontWeight.bold,
              fontSize: 30, color: Colors.white)),
              padding: EdgeInsets.all(16.0),
              onPressed: selectHandler, 
              shape: RoundedRectangleBorder(side:BorderSide(color: Colors.white)
              ),          
      ),
      margin: (EdgeInsets.all(2)),
    );
  }
}