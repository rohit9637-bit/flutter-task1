import 'package:flutter/material.dart';
import 'ui/v1.dart';
import 'ui/v2.dart';
import 'ui/audi1.dart';
import 'ui/audi.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.audiotrack),
                  text: 'Audio online',
                ),
                Tab(
                  icon: Icon(Icons.audiotrack),
                  text: 'Audio',
                ),
                Tab(
                  icon: Icon(Icons.video_library),
                  text: 'Video online',
                ),
                Tab(
                  icon: Icon(Icons.video_library),
                  text: 'Video ',
                ),
                // Tab(
                //   icon: Icon(Icons.storage),
                //   text: 'Data Transfer',
                // ),
              ],
            ),
            title: Text('Audio/video player'),
          ),
          body: TabBarView(
            children: [
              MyApp1(),
              MyApp(),
              VideoDemo1(),
              VideoDemo(),
              // InfiniteProcessPageStarter(),
              //  DataTransferPageStarter(),
            ],
          ),
        ),
      ),
    );
  }
}
