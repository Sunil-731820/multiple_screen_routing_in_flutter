import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Multiple Screen",
      color: Colors.redAccent,
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, primaryColorDark: Colors.amberAccent),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  //final List<String> items = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white30,
      appBar: AppBar(
        title: Text(
          "Multiple Screen Routing",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 30,
            width: 40,
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startDocked,
              floatingActionButton: FloatingActionButton(
                tooltip: "Home Page",
                elevation: 1.5,
                foregroundColor: Colors.cyanAccent,
                backgroundColor: Colors.indigo,
                child: const Icon(Icons.home),
                onPressed: () {
                  null;
                },
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.redAccent),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: 30,
            width: 60,
            child: Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.startDocked,
              floatingActionButton: FloatingActionButton(
                tooltip: "Details Page",
                elevation: 1.5,
                foregroundColor: Colors.cyanAccent,
                backgroundColor: Colors.indigo,
                child: const Icon(Icons.home),
                onPressed: () {
                  null;
                },
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(color: Colors.redAccent),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
