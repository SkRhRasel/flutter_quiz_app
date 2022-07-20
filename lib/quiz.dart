import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final int? questionIndex;
  final VoidCallback? answerOfQuestion;

  // Quiz(this.questions, this.questionIndex, this.answerOfQuestion);

  const Quiz(
      {Key? key,
      required this.questionIndex,
      required this.questions,
      required this.answerOfQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions![questionIndex!]['questionText'] as String),

      /// ... is a Spread Operator
      ///  It can be used to extend the elements of a Collection.
      ///  In Dart, Spread Operator (...) and Null-aware Spread Operator (...?)
      ///  are used for inserting multiple elements in a collection like
      ///  Lists, Maps, set
      // ...(questions![questionIndex!]['answer'] as List<String>).map((answer) {
      ...(questions![questionIndex!]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            selectHandler: () => answerOfQuestion!(answer['score']),
            // () => is a anonymous function
            answerText: answer['text'] as String);
      }).toList(),
    ]);
  }
}
