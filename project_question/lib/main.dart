import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _questSelect = 0;
  int _fullGrade = 0;

  final List<Map<String, dynamic>> _question = [
    {
      'question': 'Qual minha cor favorita?',
      'answer': [
        {'texto': 'Preto', 'nota': 1},
        {'texto': 'Branco', 'nota': 3},
        {'texto': 'Roxo', 'nota': 4},
        {'texto': 'Azul', 'nota': 2},
      ]
    },
    {
      'question': 'Qual meu animal favorito?',
      'answer': [
        {'texto': 'Cachorro', 'nota': 3},
        {'texto': 'Gato', 'nota': 4},
        {'texto': 'Cobra', 'nota': 2},
        {'texto': 'Hampter', 'nota': 1},
      ]
    },
    {
      'question': 'Qual minha linguagem preferida?',
      'answer': [
        {'texto': 'Dart', 'nota': 4},
        {'texto': 'javaScript', 'nota': 3},
        {'texto': 'C#', 'nota': 1},
        {'texto': 'Kotlin', 'nota': 2},
      ]
    },
    {
      'question': 'Qual minha marca preferida?',
      'answer': [
        {'texto': 'Sunsung', 'nota': 3},
        {'texto': 'Apple', 'nota': 4},
        {'texto': 'Xiaome', 'nota': 1},
        {'texto': 'Motorola', 'nota': 2},
      ]
    },
    {
      'question':
          'Qual das opções abaixo de computador eu compraria para codar?',
      'answer': [
        {'texto': 'MC book', 'nota': 4},
        {'texto': 'Notebok Sunsung', 'nota': 3},
        {'texto': 'Desktop Montado', 'nota': 2},
        {'texto': 'Notebook Lenovo', 'nota': 1},
      ]
    }
  ];

  bool get questionAlreadySelected {
    return _questSelect < _question.length;
  }

  void _respond(int note) {
    if (questionAlreadySelected) {
      setState(() {
        _questSelect++;

        _fullGrade += note;
      });
    }
  }

  void _reset() {
    setState(() {
      _questSelect = 0;
      _fullGrade = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: questionAlreadySelected
              ? Text("Perguntas ${_questSelect + 1}")
              : const Text("Pontuação"),
        ),
        body: questionAlreadySelected
            ? Quiz(
                question: _question,
                questSelect: _questSelect,
                respond: _respond,
              )
            : Result(_fullGrade, _reset),
      ),
    );
  }
}
