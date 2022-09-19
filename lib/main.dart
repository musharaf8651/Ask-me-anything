import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallPage(),
  )
);

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text('Ask me Anything'),
          centerTitle: true,
        ),
        body: const Ball(),
      );
  }
}
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _ballState();
}

class _ballState extends State<Ball> {
  int clicked=1;
  void Pressed()
  {
    setState(() {
      clicked = Random().nextInt(5)+1;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            Pressed();
          },
        child:
      Image.asset('images/ball$clicked.png')

      ),
    );
  }
}






