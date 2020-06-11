import 'package:flutter/material.dart';
import './question.dart';
import  './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(_MyApp());


class _MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MyAppState();

}


class _MyAppState extends State<_MyApp> {


  var _questionIndex = 0;

  var _totalScore = 0;


  void _processScore(int score){
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    
    print("Suceed");
  }

  void _resetQuiz(){

    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });

  }



 
  @override
  Widget build(BuildContext context) {
    

    final questions = const[
    {
      'questionTxt': '1) What color you like ?',
      'answerTxt': [{'text':'Black', 'value': 10},
      {'text':'Green', 'value': 5},
      {'text':'Yellow', 'value': 2},
      {'text':'Red', 'value': 1}],
    },
    {
      'questionTxt': '2) What number you like ?',
      'answerTxt': [{'text':'one', 'value': 10},
      {'text':'two', 'value': 5},
      {'text':'three', 'value': 2},
      {'text':'four', 'value': 1}],
    },
    {
      'questionTxt': '3) What language you like ?',
      'answerTxt': [{'text':'English', 'value': 10},
      {'text':'Chinese', 'value': 5},
      {'text':'Korean', 'value': 2},
      {'text':'Japanese', 'value': 1}],
    }
    ];

    return MaterialApp(
      title: "Testing",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar Title"),
        ),
        body: _questionIndex < questions.length ? 
        Quiz(processScore: _processScore, questionIndex: _questionIndex, questions: questions)
        : Result(_totalScore, _resetQuiz),
        ),
      );
  }
}