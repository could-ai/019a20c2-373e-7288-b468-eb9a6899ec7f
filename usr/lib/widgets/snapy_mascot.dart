import 'package:flutter/material.dart';

class SnapyMascot extends StatelessWidget {
  final double size;

  const SnapyMascot({super.key, this.size = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [Colors.blue[300]!, Colors.blue[600]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Icon(
        Icons.smart_toy,
        color: Colors.white,
        size: size * 0.6,
      ),
    );
  }
}