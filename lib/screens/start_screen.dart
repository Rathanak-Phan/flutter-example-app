import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Screen'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Start Screen!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}