import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this._text, this._onPressed, {Key? key}) : super(key: key);

  final String _text;
  final void Function() _onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
        ),
        child: Text(_text),
        onPressed: _onPressed,
      ),
    );
  }
}
