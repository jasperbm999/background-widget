import 'package:flutter/material.dart';

class BackgroundScreen extends StatelessWidget {
  final Color backgroundColor;
  final String backgroundImage;
  final Widget child;

  BackgroundScreen({required this.backgroundColor, required this.backgroundImage, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
