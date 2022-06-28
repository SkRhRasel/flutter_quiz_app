import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerOfQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    log('questionIndex: $_questionIndex');
    // print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What is your favourite color?',
    //   'What is your favourite animal?',
    //   'What is your favourite language?',
    //   'What is your favourite country?'
    // ];
    var questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answer': ['Black', 'Blue', 'Green', 'Sky']
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answer': ['Cat', 'Tiger', 'Lion', 'Bull']
      },
      {
        'questionText': 'What\'s your favourite language?',
        'answer': ['Tamil', 'Bengali', 'English', 'Arabic']
      },
      {
        'questionText': 'What\'s your favourite country?',
        'answer': ['USA', 'UK', 'Bangladesh', 'Paris']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AppBar')),
        body: Column(children: [
          // Text(questions[_questionIndex]),
          Question(questions[_questionIndex]['questionText'] as String),
          // Answer(selectHandler: _answerOfQuestion),
          // Answer(selectHandler: _answerOfQuestion),
          // Answer(selectHandler: _answerOfQuestion),
          ...(questions[_questionIndex]['answer'] as List<String>)
              .map((answer) {
            return Answer(selectHandler: _answerOfQuestion, answerText: answer);
          })

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
        ]),
      ),
    );
  }
}
