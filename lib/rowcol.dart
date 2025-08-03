import 'package:flutter/material.dart';

class RowCol extends StatefulWidget {
  const RowCol({super.key});

  @override
  State<RowCol> createState() => _RowColState();
}

class _RowColState extends State<RowCol> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(height: 250, color: Colors.amber),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                        child: 
                          Row(
                            children: [
                              Expanded(child: Container(color: Colors.red)),
                              SizedBox(width: 20),
                              Expanded(child: Container(color: Colors.red)),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: Row(
                            children: [
                              Expanded(child: Container(color: Colors.blue)),
                              SizedBox(width: 20),
                              Expanded(child: Container(color: Colors.blue)),
                            ],
                        ),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
