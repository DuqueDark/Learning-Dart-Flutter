import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this._fullGrade, this._reset, {Key? key}) : super(key: key);

  final int _fullGrade;
  final void Function() _reset;

  String get resultMessage {
    if (_fullGrade > 18) {
      return "Nivel Challenger\n$_fullGrade";
    } else if (_fullGrade > 14) {
      return "Nivel Mestre\n$_fullGrade";
    } else if (_fullGrade > 10) {
      return "Nivel Diamond\n$_fullGrade";
    } else if (_fullGrade > 6) {
      return "Nivel Gold\n$_fullGrade";
    } else {
      return "Nivel Ferro\n$_fullGrade";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultMessage,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Center(
          child: TextButton(
            child: const Text("Voltar ao Inicio"),
            onPressed: _reset,
          ),
        ),
      ],
    );
  }
}
