import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/Countdown.dart';
import 'package:flutter_application_1/Models/Question.dart';
import 'package:flutter_application_1/Models/Questions_data.dart';
import 'package:flutter_application_1/Widgets/Countdown.dart';
import 'package:flutter_application_1/Widgets/Jokers.dart';
import 'package:flutter_application_1/Widgets/Options.dart';
import 'package:flutter_application_1/Widgets/QBox.dart';
import 'package:flutter_application_1/Widgets/ScoreBoard.dart';
import 'package:flutter_application_1/Pages/cikis.dart';
//import 'package:selo/Pages/giris.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//TIMER BOLUMU
  CountdownController _countdownController = CountdownController();
//TIMER BOLUMU BITTI

//Degiskenler
  var questionIndex = 0; //KAÇINCI SORUDAYIZ SAYAC
  List<Question> Sorular = questions; //SORU LİSTESİ
  List<Question> SorularKopya = List.from(questions); //BURASI DA SORU LİSTESİ
  var score = 0; //:)
  var ysayac = 0; //YANLIŞ SAYACI
  bool flagYariYariya = false; //YARI YARIYA KULLANILDI MI
  @override
  Widget build(BuildContext context) {
    //Yarı yarıya tuşuna basıldığında çağıralacak fonksiyon
    void handleYariYariya() {
      setState(() {
        flagYariYariya = true;
      });
    }

    //Testi sıfırlamak için kullanılacak fonksiyon.
    void resetQuiz() {
      setState(() {
        ysayac = 0;
        questionIndex = 0;
        score = 0;
        SorularKopya = List.from(questions);
      });
    }

/*
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Oyun Bitti'),
            content: Text('Doğru Sayısı: $score\nYanlış Sayısı: $ysayac'),
            actions: [
              TextButton(
                child: Text('Tamam'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );

*/

//Bir şıkka basıldığında çağırlacak fonksiyon
    void handleOnClick(answerbool) {
      setState(() {
        flagYariYariya = false;
        _countdownController.restartTimer();
        if (answerbool) {
          score++;
        } else {
          ysayac++;
        }

        if (questionIndex == Sorular.length - 1) {
          // Sorular bitince sıfırla ve çıkış sayfasına yönlendir.
          // resetQuiz();
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => cikis(this.score),
            ),
          );
        } else {
          // Sorular bitmediyse bir sonraki soruya geç.
          questionIndex++;
        }
      });
    }

    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(210, 11, 24, 59),
        ),
      ),
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 5, 20),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'KİM EMİR ÖZTÜRK OLMAK İSTER?',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.amber[600],
                fontSize: 32.0,
                fontWeight: FontWeight.bold),
          ),
          toolbarHeight: 100,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(210, 11, 24, 59),
                Color.fromARGB(255, 36, 22, 43)
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100.0),
                    //BURADA GERİ SAYIM WIDGET'I ÇAĞIRILIR
                    child: Countdown(
                      score: score,
                      controller: _countdownController, //
                      timer_seconds: 120, //GERİ SAYIM KAÇ SANİYE
                    ),
                  ),

                  Row(
                    children: [QBox(SorularKopya[questionIndex].question)],
                  ),
                  SizedBox(
                    height: 20, //20 birimlik boşluk bırakır
                  ),
                  //BURADA ŞIKLAR ÇAĞIRILIR
                  Options(
                    questionIndex,
                    handleOnClick,
                    questions,
                    flagYariYariya,
                  ),
                ],
              ),
              SizedBox(width: 30),
              Column(
                children: [
                  Jokers(handleYariYariya, questionIndex,
                      _countdownController.restartTimer),
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Scoreboard(score, ysayac),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Buradan geriye gitme ::::::

/*
30 p 
3 bölüm 
30p 
A-3 tane önce vize den
B-1 porje adı grup 9 bende projede bu konuları yaptım diye yaz 
C-json dosyası değereler var sınıf olarak isteyecek hoca 20p(model yazma olacak)
D- 20p veri tabanı veya dosya 2 fonks 10p 10p (adı aldığı parametreler döndürdüğü değer = method imzası )*/
