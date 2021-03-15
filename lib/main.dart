import 'package:bitcoin/mainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Begin());
}
class Begin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF17142A),
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          body1: TextStyle(
            color: Color(0xFF08EA7B)
          )
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          title:Center(
              child: Text(
                  "Crypto Me",
              )
          ),
          backgroundColor: Color(0xFF17142A),
        ),
        body: SafeArea(
          child: MainScreen(),
        ),
      ),
    );
  }
}
