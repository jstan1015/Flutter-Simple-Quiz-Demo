import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;

  final int questionIndex;

  final Function processScore;

  Quiz({
    @required this.questions,
  @required this.processScore, 
  @required this.questionIndex 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
            Spacer(),
            Question(questions[questionIndex]['questionTxt']),
            Spacer(),

            ...(questions[questionIndex]['answerTxt']as List<Map<String, Object>>).map((answer){
              return Answer(()=> processScore(answer['value']) ,answer['text']);
            }).toList()

          ],
    );
  }

}