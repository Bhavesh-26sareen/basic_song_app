import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MaterialApp(
    title: "xylo",
    home: Xylo(),
    debugShowCheckedModeBanner: false,
  ));
}

class Xylo extends StatefulWidget {
  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  AudioCache cache;
  AudioPlayer _player;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _player = AudioPlayer();
    cache = AudioCache(fixedPlayer: _player);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Top 6 Punjabi Songs",
            style: TextStyle(
              fontSize: 25,
            )),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: RaisedButton(
              onPressed: () {
                //  final player = AudioCache();
                _player.stop();
                cache.play('my_audio.mp3');
              },
              child: Container(
                height: 80,
                child: Text("Brown Munde",
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              color: Colors.red,
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                //final player = AudioCache();
                _player.stop();

                cache.play('my_audio1.mp3');
              },
              child: Container(
                height: 80,
                child: Text("Dilbar",
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                //  final player = AudioCache();
                _player.stop();
                cache.play('my_audio2.mp3');
              },
              child: Container(
                height: 80,
                child: Text("Jatt Te Jawani",
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              color: Colors.teal,
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                // final player = AudioCache();
                _player.stop();

                cache.play('my_audio3.mp3');
              },
              child: Container(
                height: 80,
                child: Text("Raule",
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              color: Colors.green,
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                // final player = AudioCache();
                _player.stop();
                cache.play('my_audio4.mp3');
              },
              child: Container(
                height: 80,
                child: Text("Sira E Hou",
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              color: Colors.purple,
            ),
          ),
          Expanded(
            child: RaisedButton(
              onPressed: () {
                // final player = AudioCache();
                _player.stop();
                cache.play('my_audio5.mp3');
              },
              child: Container(
                height: 80,
                child: Text("Sun Fer",
                    style: TextStyle(
                      fontSize: 50,
                    )),
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
