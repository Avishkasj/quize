import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'question.dart';

int i = 0;

class Quizbrain {
  int qusno = 0;
  List<Question> _questionbank = [
    Question('A group of crocodiles are called shrewdness', false),
    Question('Dogs can understand up to 250 hand gestures ', true),
    Question('A hair of a polar bear\'s fur is white', false),
  ];

  void netq() {
    if (_questionbank.length > qusno + 1)
      qusno++;
    else {
      i++;
      if (i > 1) {
        print("OUT of Qustion");
        // CupertinoAlertDialog(
        //   title: Text('Error'),
        //   content: Text('Quction is over '),
        // );
      }
    }
  }

  String getqtext(int qusno) {
    return _questionbank[qusno].questiontext;
  }

  bool getans(int qusno) {
    return _questionbank[qusno].answer;
  }
}
