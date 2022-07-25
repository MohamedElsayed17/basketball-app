import 'package:basketball/widgets/points_button.dart';
import 'package:flutter/material.dart';

class TeamWidget extends StatelessWidget {
  final int teamPoints;
  final String title;
  final Function() onePointOnPressed;

  final Function() twoPointOnPressed;

  final Function() fourPointOnPressed;
  const TeamWidget(
      {super.key,
      required this.teamPoints,
      required this.title,
      required this.onePointOnPressed,
      required this.twoPointOnPressed,
      required this.fourPointOnPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 48),
        ),
        Text(
          "$teamPoints",
          style: const TextStyle(fontSize: 100),
        ),
        PointsButton(onPressed: onePointOnPressed, text: "Add 1 Point"),
        PointsButton(onPressed: twoPointOnPressed, text: "Add 2 Points"),
        PointsButton(onPressed: fourPointOnPressed, text: "Add 4 Points"),
      ],
    );
  }
}
