import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MaterialApp(home: giris()));
}

class giris extends StatelessWidget {
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
              const Color.fromARGB(255, 36, 22, 43), // İkinci renk siyah
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),

              // Yuvarlak çerçeve içeren Container
              Container(
                width: 300,
                height: 300,
                child: ClipOval(
                  child: Transform.translate(
                    offset: Offset(-20.0, -9.0), // Sola bir birim kaydır
                    child: Transform.scale(
                      scale: 1.3, // Resmi 1.5 kat büyüt
                      child: Transform.rotate(
                        angle: 0,
                        child: Image.asset("lib/logo.jpg"),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => MyApp()));
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 66, vertical: 25),
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
                child: Text('Oyuna Başla'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text(
                      'Slayyy Bilgi Yarışmasına hoş geldiniz! \n Bu yarışmada sizin için belirlenen rastgele soruları,soru başına 25 saniyede çözerek yarışmayı tamamlamanız gerekmektedir. Dilerseniz jokerlerden yardım alabilirsiniz. Fakat unutmayın, jokerleri yalnızca bir kere kullanabilirsiniz:) \n Keyifli oyunlar...',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 230, 8),
                          fontSize: 16),
                    ),
                    duration: Duration(seconds: 10),
                    backgroundColor: Colors.black,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  // yardım butonuna tıklandığında ne olacak?
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 85, vertical: 25),
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
                child: Text('Yardım'),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // çıkış butonuna tıklandığnda ne yapmalı
                  closeScreen(context);
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 95, vertical: 25),
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
                child: Text('Çıkış'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void closeScreen(BuildContext context) {
  Navigator.pop(context);
}
