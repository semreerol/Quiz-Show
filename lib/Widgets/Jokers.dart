import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/Questions_data.dart';

import 'package:url_launcher/url_launcher.dart';

class Jokers extends StatefulWidget {
  var eventYariYariya;
  var qIndex;
  var reset_timer;
  Jokers(this.eventYariYariya, this.qIndex, this.reset_timer);
  @override
  _JokersState createState() => _JokersState();
}

class _JokersState extends State<Jokers> {
  bool phoneButtonPressed = false;
  bool audienceButtonPressed = false;
  bool halfHalfButtonPressed = false;

  _JokersState();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(55, 76, 73, 50),
            offset: Offset(0.1, 1),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.topRight,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                color: Color.fromARGB(255, 2, 5, 20),
                child: Text(
                  "Jokerler",
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: phoneButtonPressed
                      ? Colors.grey
                      : Color.fromARGB(255, 172, 180, 108),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed:
                    phoneButtonPressed // if(phoneButtonPresssed){null} else {...}
                        ? null
                        : () {
                            setState(
                              () {
                                phoneButtonPressed = true;
                                widget.reset_timer();

                                final snackBar = SnackBar(
                                  backgroundColor: Colors.black,
                                  content: Text(
                                    'Cevap: ${questions[widget.qIndex].ipucu}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 255, 230, 8),
                                        fontSize: 23.0),
                                  ),
                                  duration: Duration(seconds: 10),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                            );
                          },
                child: Column(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '  Telefon  ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: Color.fromARGB(255, 172, 180, 108),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: audienceButtonPressed
                    ? null
                    : () {
                        setState(() {
                          audienceButtonPressed = true;
                        });
                        _launchURL(
                            "https://strawpoll.com/wby5A0NjdyA"); // Seyirci jokeri için örnek bir URL
                      },
                child: Column(
                  children: [
                    Icon(
                      Icons.supervised_user_circle,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                      width: 20,
                    ),
                    Text(
                      '  Seyirci  ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(16),
                  backgroundColor: Color.fromARGB(255, 172, 180, 108),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                onPressed: halfHalfButtonPressed
                    ? null
                    : () {
                        setState(() {
                          halfHalfButtonPressed =
                              true; //tek kez tıklanmasını sağlar
                          widget.eventYariYariya(); //2 şıkkı siler
                        });
                      },
                child: Column(
                  children: [
                    Icon(
                      Icons.percent,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Yarı Yarıya',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'URL açılamadı: $url';
    }
  }
}


                      // ElevatedButton(
                      //   child: Text('Telefon jokerr'),
                      //   onPressed: () {
                      //     showDialog(
                      //       context: context,
                      //       builder: (context) => const AlertDialog(
                      //         title: Text('Emir Öztürk'),
                      //         content: Text('ipucumuz buraya yazılacak'),
                      //         //actions: [TextButton(child:Text('Jokeri kapat'),
                      //         //onPressed(CloseButton())=>Navigator.pop(context)),],
                      //       ),
                      //     );
                      //   },
                      // );