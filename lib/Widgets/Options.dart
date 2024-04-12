import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Question.dart';
import 'package:flutter_application_1/Models/Questions_data.dart';

import 'option.dart';

class Options extends StatelessWidget {
  var yariyariyaflag;
  var rightIndex;
  var qIndex;
  var handleOnPressed;
  List<Question> Quiz;
  Options(
    this.qIndex,
    this.handleOnPressed,
    this.Quiz,
    this.yariyariyaflag,
  );
  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 4; i++) {
      if (questions[qIndex].correctAnswer == questions[qIndex].options[i]) {
        rightIndex = i;
      }
    }
    List<int> Sayilar = [0, 1, 2, 3];
    Sayilar.remove(Sayilar[rightIndex]);
    Random random = Random();
    int randomSayi = random.nextInt(3);
    List<bool> sil = [false, false, false, false];
    if (yariyariyaflag) {
      for (int j = 0; j < 4; j++) {
        sil[j] = true;
      }
      sil[rightIndex] = false;
      sil[Sayilar[randomSayi]] = false;
    }

    {
      return Column(
        children: [
          Row(
            children: [
              Option(0, qIndex, handleOnPressed, Quiz, sil[0]),
              Option(1, qIndex, handleOnPressed, Quiz, sil[1]),
            ], //1 2 3 4 opindex olarak tanımlandı.
          ),
          Row(
            children: [
              Option(2, qIndex, handleOnPressed, Quiz, sil[2]),
              Option(3, qIndex, handleOnPressed, Quiz, sil[3]),
            ],
          ),
        ],
      );
    }
  }
}
