import 'package:flutter/material.dart';

class Scoreboard extends StatefulWidget {
  @override
  var score;
  var ysayac;
  Scoreboard(this.score, this.ysayac);
  State<StatefulWidget> createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Color.fromARGB(255, 2, 5, 20),
      ),
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'doğru: ${widget.score.toString()}',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'yanlış:${widget.ysayac.toString()} ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
