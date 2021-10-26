import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this._fullGrade, this._reset, {Key? key}) : super(key: key);

  final int _fullGrade;
  final void Function() _reset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "Parabéns!!\nNota $_fullGrade",
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
