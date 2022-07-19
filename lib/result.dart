import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  // const Result({Key? key, this.resultScore}) : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      return resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      return resultText = "You are likeable!";
    } else if (resultScore <= 16) {
      return resultText = "You are ..... strange?";
    } else {
      return resultText = "You are so bad!";
    }
    // return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
