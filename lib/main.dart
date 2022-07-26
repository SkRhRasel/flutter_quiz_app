import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

/*void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return const Material();
  };
  runApp(const MyApp());
}*/

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  /// Map, question variable is a list of map
  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': [
        {'text': 'Black', 'score': 2},
        {'text': 'Red', 'score': 4},
        {'text': 'Sky Blue', 'score': 10},
        {'text': 'Gray', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      // 'answer': ['Cat', 'Tiger', 'Lion', 'Bull']
      'answer': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Tiger', 'score': 6},
        {'text': 'Lion', 'score': 8},
        {'text': 'Bull', 'score': 4}
      ]
    },
    {
      'questionText': 'What\'s your favourite language?',
      'answer': [
        {'text': 'English', 'score': 8},
        {'text': 'Bengali', 'score': 10},
        {'text': 'Hindi', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favourite country?',
      'answer': [
        {'text': 'USA', 'score': 10},
        {'text': 'UK', 'score': 6},
        {'text': 'Bangladesh', 'score': 8},
        {'text': 'Paris', 'score': 4}
      ]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      var _questionIndex = 0;
      var _totalScore = 0;
    });
  }

  void _answerOfQuestion(int? score) {
    _totalScore += score!;

    /// _totalScore = _totalScore + score!;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    log('questionIndex: $_questionIndex');
    // print('Answer Chosen!');

    if (_questionIndex < _questions.length) {
      log('We have more questions!');
    } else {
      log('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AppBar')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerOfQuestion: _answerOfQuestion!,
              )
            : Result(resultScore: _totalScore, resetHandler: _resetQuiz),
        // without parenthesis means pointing the method to call them
      ),
    );
  }

// @override
// void initState() {
//   super.initState();
//   throw('This is an Error');
// }
}
