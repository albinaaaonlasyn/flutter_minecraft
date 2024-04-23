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
          title: Text('Minecraft Character Head'),
        ),
        body: Center(
          child: MinecraftCharacterHead(),
        ),
      ),
    );
  }
}

class MinecraftCharacterHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240, // Adjust size as needed
      height: 240, // Adjust size as needed
      child: _buildStack(),
    );
  }

  Widget _buildStack() {
    return Stack(
      children: [
        // Face
        Positioned(
          top: 60,
          left: 40,
          child: Container(
            width: 160,
            height: 160,
            color: Colors.brown, // You can change the color as needed
          ),
        ),
        // Left eye
        _buildEye(80, 70),
        // Right eye
        _buildEye(80, 130),
        // Mouth
        _buildMouth(),
      ],
    );
  }

  // Function to create an eye
  Widget _buildEye(double top, double left) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: 40,
        height: 40,
        color: Colors.white,
      ),
    );
  }

  // Function to create the mouth
  Widget _buildMouth() {
    return Positioned(
      top: 160,
      left: 60,
      child: Container(
        width: 120,
        height: 20,
        decoration: BoxDecoration(
          color: Colors.pink, // Change to desired lip color
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
