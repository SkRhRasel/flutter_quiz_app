import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback? selectHandler;
  final String? answerText;

  const Answer({Key? key, this.selectHandler, this.answerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
          onPressed: selectHandler!,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue[600]),
              foregroundColor: MaterialStateProperty.all(Colors.white)),
          // style: ElevatedButton.styleFrom(
          //     primary: Colors.blueAccent, onPrimary: Colors.white),
          child: Text(answerText!)),
    );
  }
}
