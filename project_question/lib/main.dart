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
  var _questSelect = 0;

  final List<Map<String, dynamic>> _question = [
    {
      'question': 'Qual minha cor favorita?',
      'answer': ['Preto', 'Branco', 'Roxo', 'Azul']
    },
    {
      'question': 'Qual meu animal favorito?',
      'answer': ['Cachorro', 'Gato', 'Cobra', 'Hamister']
    },
    {
      'question': 'Qual minha linguagem preferida?',
      'answer': ['Dart', 'javaScript', 'C#', 'Kotlin']
    },
    {
      'question': 'Qual minha marca preferida?',
      'answer': ['Sunsung', 'Apple', 'Xiaome', 'Motorola']
    },
    {
      'question':
          'Qual das opções abaixo de computador eu compraria para codar?',
      'answer': [
        'MC book',
        'Notebok Sunsung',
        'Desktop Montado',
        'Notebook Lenovo'
      ]
    }
  ];

  bool get questionAlreadySelected {
    return _questSelect < _question.length;
  }

  void _respond() {
    if (questionAlreadySelected) {
      setState(() {
        _questSelect++;
      });
    }
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
          title: const Text('Perguntas'),
        ),
        body: questionAlreadySelected
            ? Quiz(
                question: _question,
                questSelect: _questSelect,
                respond: _respond,
              )
            : const Result(),
      ),
    );
  }
}
