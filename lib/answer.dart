import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5),
        width: double.infinity,
        child: RaisedButton(
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: selectHandler,
            child: Text(
              answerText,
              style: TextStyle(
                fontSize: 20,
              ),
            )));
  }
}
