import 'dart:developer';
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

  /// Map, question variable is a list of map
  final questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answer': ['Black', 'Blue', 'Green', 'Sky']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Cat', 'Tiger', 'Lion', 'Bull']
    },
    {
      'questionText': 'What\'s your favourite language?',
      'answer': ['Tamil', 'Bengali', 'English']
    },
    {
      'questionText': 'What\'s your favourite country?',
      'answer': ['USA', 'UK', 'Bangladesh', 'Paris']
    }
  ];

  void _answerOfQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    log('questionIndex: $_questionIndex');
    // print('Answer Chosen!');

    if (_questionIndex < questions.length) {
      log('We have more questions!');
    } else {
      log('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var questions = [
    //   'What is your favourite color?',
    //   'What is your favourite animal?',
    //   'What is your favourite language?',
    //   'What is your favourite country?'
    // ];

/*    var dummy = ['cat'];
    dummy.add('dog');
    print(dummy);
    log(dummy.last);
    dummy =[];
    print(dummy);*/

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AppBar')),
        body: _questionIndex < questions.length
            ? Column(children: [
                // Text(questions[_questionIndex]),
                Question(questions[_questionIndex]['questionText'] as String),
                // Answer(selectHandler: _answerOfQuestion),
                // Answer(selectHandler: _answerOfQuestion),
                // Answer(selectHandler: _answerOfQuestion),
                /// ... is a Spread Operator
                ///  It can be used to extend the elements of a Collection.
                ///  In Dart, Spread Operator (...) and Null-aware Spread Operator (...?)
                ///  are used for inserting multiple elements in a collection like
                ///  Lists, Maps, set
                ...(questions[_questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(
                      selectHandler: _answerOfQuestion, answerText: answer);
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
              ])
            : const Center(
                child: Text("You did it!"),
              ),
      ),
    );
  }
}
