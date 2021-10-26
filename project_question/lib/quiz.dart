// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz({
    required this.question,
    required this.questSelect,
    required this.respond,
  });

  bool get questionAlreadySelected {
    return questSelect < question.length;
  }

  final List<Map<String, dynamic>> question;
  final int questSelect;
  final void Function() respond;

  @override
  Widget build(BuildContext context) {
    List<String> listAnswer =
        questionAlreadySelected ? question[questSelect]['answer'] : [];

    return Column(
      children: <Widget>[
        Question(question[questSelect]['question']),
        ...listAnswer.map((t) => Answer(t, respond)).toList(),
      ],
    );
  }
}
