// DÜNYANIN EN İYİ YARRIŞMA SON SAYFASIIII

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Questions_data.dart';
import 'package:flutter_application_1/Pages/giris.dart';
import 'package:flutter_application_1/Widgets/ScoreBoard.dart';
import 'package:flutter_application_1/main.dart';

// void main() {
//   runApp(MyApp());
// }

class cikis extends StatefulWidget {
  final int score;
  cikis(
    this.score,
  );
  @override
  State<cikis> createState() => _cikisState(score: score);
}

class _cikisState extends State<cikis> {
  final int score; // State içerisinde score değeri tutuluyor

  _cikisState({required this.score});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyContainer(score: score),
    );
  }
}

class MyContainer extends StatefulWidget {
  final int score; // score değeri burada da tanımlanıyor

  MyContainer({required this.score}); // Constructor ile score değeri alınıyor

  @override
  State<MyContainer> createState() => _MyContainerState(score: score);
}

class _MyContainerState extends State<MyContainer> {
  final int score; // State içerisinde score değeri tutuluyor

  _MyContainerState({required this.score}); //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(210, 11, 24, 59),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(210, 11, 24, 59),
              const Color.fromARGB(255, 36, 22, 43),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.0),
                  color: Colors.black,
                  border: Border.all(color: Colors.yellow, width: 2.0),
                ),
                child: Column(
                  children: [
                    Text(
                      'SKORUNUZ:${widget.score.toString()}',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 30,
                        ),
                        Text(
                          ' TEBRİKLER SİZ BİR EMİR ÖZTÜRKSÜNÜZ',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  /*widget.resetQuiz();*/

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => giris()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  shape: StadiumBorder(
                    side: BorderSide(
                      color: Color.fromARGB(255, 255, 230, 8),
                      width: 2,
                    ),
                  ),
                  elevation: 5,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.refresh, size: 35, color: Colors.yellow),
                    SizedBox(width: 10),
                    Text('YENİDEN BAŞLA', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
