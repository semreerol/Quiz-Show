import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Question.dart';

class Option extends StatefulWidget {
  //var opindex; //hangi şık
  var qindex; //hangi soru
  var eventOnPressed; //tıklandığında ne yapacağım fonksiyon,
  var opindex;
  var rightIndex;

  bool isActive;
  List<Question> quiz; //Bütün sorular
  Option(
      this.opindex, this.qindex, this.eventOnPressed, this.quiz, this.isActive);

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 243, 223, 45),
              offset: Offset(0.1, 1),
              blurRadius: 10,
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width * 0.4,
        child: ElevatedButton(
          onPressed: widget.isActive
              ? null
              : () {
                  setState(() {
                    if (widget.quiz[widget.qindex].correctAnswer ==
                        widget.quiz[widget.qindex].options[widget.opindex]) {
                      widget.eventOnPressed(true);
                    } else {
                      widget.eventOnPressed(false);
                    }
                  });
                },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16),
            backgroundColor: Color.fromARGB(255, 2, 5, 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          child: Text(widget.quiz[widget.qindex].options[widget.opindex],
              style: TextStyle(fontSize: 20, color: Colors.white)),
        ),
      ),
    );
  }
}
