import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questiontxt;

  Question(this.questiontxt);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child:Text( questiontxt,
      style: TextStyle(fontSize: 30), 
      textAlign: TextAlign.center,
      ),
    );
  }
}