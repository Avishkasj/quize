import 'package:flutter/cupertino.dart';

import 'question.dart';
class Quizbrain{
  int qusno =0;
  List<Question> _questionbank = [
    Question('A group of crocodiles are called shrewdness', false),
    Question('Dogs can understand up to 250 hand gestures ', true),
    Question('A hair of a polar bear\'s fur is white', false),
  ];


  void netq(){
    if(_questionbank.length > qusno+1)
    qusno++;
  }


  String getqtext(int qusno){
      return _questionbank[qusno].questiontext;
  }

  bool getans(int qusno){
    return _questionbank[qusno].answer;
  }




}



