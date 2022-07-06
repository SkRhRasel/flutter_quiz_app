import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>>? questions;
  final int? questionIndex;
  final VoidCallback? answerOfQuestion;

  const Quiz(
      {Key? key,
      @required this.questions,
      @required this.answerOfQuestion,
      @required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Text(questions[_questionIndex]),
      Question(questions![questionIndex!]['questionText'] as String),
      // Answer(selectHandler: _answerOfQuestion),
      // Answer(selectHandler: _answerOfQuestion),
      // Answer(selectHandler: _answerOfQuestion),
      /// ... is a Spread Operator
      ///  It can be used to extend the elements of a Collection.
      ///  In Dart, Spread Operator (...) and Null-aware Spread Operator (...?)
      ///  are used for inserting multiple elements in a collection like
      ///  Lists, Maps, set
      // ...(questions![questionIndex!]['answer'] as List<String>).map((answer) {
      ...(questions![questionIndex!]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            selectHandler: ()=>answerOfQuestion()!,
            answerText: answer['text'] as String);
      }).toList(),

      // ElevatedButton(
      //     onPressed: _answerOfQuestion,
      //     style: ElevatedButton.styleFrom(primary: Colors.red),
      //     child: const Text('Answer 1')),
      // ElevatedButton(
      //     onPressed: _answerOfQuestion,
      //     // onPressed: () => answerOfQuestion, //print(' Answer 2 chosen!'),//print(' Answer 2 chosen!'),
      //     style: ElevatedButton.styleFrom(primary: Colors.red),
      //     child: const Text('Answer 2')),
      // ElevatedButton(
      //     onPressed: _answerOfQuestion,
      //     // onPressed: () {
      //     //   answerOfQuestion;
      //     //   //....
      //     //   // print(' Answer 3 chosen!');
      //     // },
      //     style: ElevatedButton.styleFrom(primary: Colors.red),
      //     child: const Text('Answer 3')),
    ]);
  }
}
