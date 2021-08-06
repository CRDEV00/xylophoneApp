import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone app',
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  Xylophone({Key? key}) : super(key: key);

  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  AudioCache player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            xylophoneBtn('note1.wav', Colors.green),
            xylophoneBtn('note2.wav', Colors.red),
            xylophoneBtn('note3.wav', Colors.black),
            xylophoneBtn('note4.wav', Colors.yellow),
            xylophoneBtn('note5.wav', Colors.blue),
            xylophoneBtn('note6.wav', Colors.purple),
            xylophoneBtn('note7.wav', Colors.pink),
          ],
        ),
      ),
    );
  }

  Widget xylophoneBtn(String soundName, Color color) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        child: Text(''),
        onPressed: () {
          player.play(soundName);
        },
      ),
    );
  }
}
