import 'package:flutter/material.dart';

class PointsButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const PointsButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.tightFor(width: 150, height: 50),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange,
          minimumSize: const Size(100, 60),
          //maximumSize: const Size(100,60)
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
