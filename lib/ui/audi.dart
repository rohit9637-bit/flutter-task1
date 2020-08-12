import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mybody(),
      ),
    );
  }
}

mybody() {
  var audio = AudioCache();

  //player.setUrl(
  //'https://ia800905.us.archive.org/23/items/tvtunes_17617/Sherlock%20Holmes%20-%20BBC%20-%202010.mp3');

  return Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.black,
    child: Column(
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          //color: Colors.red,
          margin: EdgeInsets.only(top: 65, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
            ),
            image: DecorationImage(
                image: NetworkImage(
                    'https://image.tmdb.org/t/p/original/uqCwWAxIIpeQJh2KsOFqakoo5Ci.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: 50,
          width: 350,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () => audio.play(
                    'audio/12.mp3'),
                child: Text('PLAY'),
              ),
              RaisedButton(
                onPressed: () => audio.stop(),
                child: Text('STOP'),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
