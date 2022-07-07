import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;
  const Result({Key? key, this.resultScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text("You did it!"),
    );
  }
}
