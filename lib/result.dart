import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int resultScore;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent! 😎';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likeable! 👍';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?! 🤔';
    } else {
      resultText = 'You are so bad! 😞';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // SizedBox(height: 20),
          Container(
              margin: EdgeInsets.only(top: 35),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: resetHandler,
                  child: Text(
                    'Restart Quiz',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )))
        ],
      ),
    );
  }
}
