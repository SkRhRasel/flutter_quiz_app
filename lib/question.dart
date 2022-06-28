import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? questionText;

  Question(this.questionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Text(
          questionText!,
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ));
  }
}
