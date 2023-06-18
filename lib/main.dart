import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Background Demo'),
        ),
        body: BackgroundScreen(
          backgroundColor: Colors.white,
          child: Center(
            child: Text(
              'Hello, World!',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}

class BackgroundScreen extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;

  BackgroundScreen({required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        image: DecorationImage(
          image: AssetImage('assets/BG.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
