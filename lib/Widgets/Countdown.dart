import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/cikis.dart';

class CountdownController {
  late VoidCallback restartTimer;

  CountdownController() {
    restartTimer = _restartTimer;
  }

  void _restartTimer() {
    _countdownState?._restartTimer();
  }

  _CountdownState? _countdownState;
}

class Countdown extends StatefulWidget {
  final CountdownController controller;
  final int timer_seconds;
  final int score;

  Countdown(
      {required this.controller,
      required this.timer_seconds,
      required this.score});

  @override
  _CountdownState createState() => _CountdownState(score);
}

class _CountdownState extends State<Countdown> {
  late int _seconds;
  late Timer _timer;
  final int score;
  _CountdownState(
    this.score,
  );
  @override
  void initState() {
    super.initState();
    widget.controller._countdownState = this;
    _seconds = widget.timer_seconds;
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        _timer.cancel();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => cikis(this.score)));
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  void _restartTimer() {
    _timer.cancel(); // Önceki timer'ı iptal et
    setState(() {
      _seconds = widget.timer_seconds;
    });
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 243, 223, 45),
            offset: Offset(0.1, 1),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(22.0),
        color: Color.fromARGB(255, 2, 5, 20),
      ),
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(Icons.timer, color: Colors.white, size: 32.0),
          Text(
            ' $_seconds',
            style: TextStyle(color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
