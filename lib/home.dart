import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // App Bar
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,

          // leading
          leading: Icon(Icons.menu, color: Colors.white),

          // title
          title: Text("Apple", style: TextStyle(color: Colors.amber)),

          // action
          actions: [Icon(Icons.settings, color: Colors.white)],
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 200,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellow, Colors.cyan],
                  ),
                ),
                child: Icon(Icons.favorite, color: Colors.white, size: 50),
              ),
            ],
          ),
        ),      ),
      debugShowCheckedModeBanner: false,
    );
  }

  bool get newMethod => false;
}
