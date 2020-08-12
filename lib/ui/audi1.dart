import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mybody1(),
      ),
    );
  }
}

mybody1() {
  var player = AudioPlayer();

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
                    'https://i.pinimg.com/736x/3d/51/f3/3d51f3627e65a9a772fd8514689db2ff.jpg'),
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
                onPressed: () => player.play(
                    'https://github.com/rohit9637-bit/Flutter/raw/master/Yenti%20Yenti%20Full%20Video%20Song%20_%20Geetha%20Govindam%20_%20Vijay%20Deverakonda%2C%20Rashmika%20Mandanna%2C%20Gopi%20Sunder%20(%20256kbps%20cbr%20).mp3'),
                child: Text('PLAY'),
              ),
              RaisedButton(
                onPressed: () => player.stop(),
                child: Text('STOP'),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
