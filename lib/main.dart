import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sno){
    final player=AudioCache();
    player.play('note$sno.wav');
  }
  Expanded buildkey({Color color,int sno}){
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(sno);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red,sno: 1),
              buildkey(color: Colors.orange,sno: 2),
              buildkey(color: Colors.yellow,sno: 3),
              buildkey(color: Colors.green,sno: 4),
              buildkey(color: Colors.blue,sno: 5),
              buildkey(color: Colors.indigo,sno: 6),
              buildkey(color: Colors.purple.shade900,sno: 7),
            ],
          ),
        ),
      ),
    );
  }
}
