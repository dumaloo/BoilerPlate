import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.black26,
            title: const Text("DUMALOO"),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.phone_android_sharp),),
              Tab(icon: Icon(Icons.tablet_android_sharp),),
              Tab(icon: Icon(Icons.watch),),
            ]),
          ),
          body: const TabBarView(children: <Widget>[
            Tab1(),
            Tab2(),
            Tab3(),
          ]),
        ),
      ),
    );
  }
}
