import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
        'Desktop personalizado',
        'Notebook Lenovo'
      ]
    }
  ];

  void _respond() {
    setState(() {
      _questSelect++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Question(_question[_questSelect]['question']),
            Answer(_question[_questSelect]['answer'][0], _respond),
            Answer(_question[_questSelect]['answer'][1], _respond),
            Answer(_question[_questSelect]['answer'][2], _respond),
            Answer(_question[_questSelect]['answer'][3], _respond),
          ],
        ),
      ),
    );
  }
}
