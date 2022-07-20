import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;
  final VoidCallback? resetHandler;

  // Result(this.resultScore, this.resetHandler);

  const Result({Key? key, this.resultScore, this.resetHandler}) : super(key: key);

  String? get resultPhrase {
    String resultText;
    if (resultScore! <= 8) {
      return resultText = "You are awesome and innocent!";
    } else if (resultScore! <= 12) {
      return resultText = "You are likeable!";
    } else if (resultScore! <= 16) {
      return resultText = "You are ..... strange?";
    } else {
      return resultText = "You are so bad!";
    }
    // return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: resetHandler!, // binding the handler in onPressed
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
                  foregroundColor: MaterialStateProperty.all(Colors.white)),
              child: const Text("Restart Quiz!")),
        ],
      ),
    );
  }
}
