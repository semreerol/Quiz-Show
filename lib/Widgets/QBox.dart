import 'package:flutter/material.dart';

class QBox extends StatelessWidget {
  String soru;
  QBox(this.soru);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 2, 5, 20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 239, 229, 21),
            offset: Offset(0.1, 1),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: EdgeInsets.all(8.0),
      child: Text(
        '${soru}',
        textAlign: TextAlign.center,
        softWrap: true,
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
