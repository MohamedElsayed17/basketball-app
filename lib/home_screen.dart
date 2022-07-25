import 'package:basketball/widgets/points_button.dart';
import 'package:basketball/widgets/team_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TeamWidget(
                      teamPoints: teamAPoints,
                      title: "Team A",
                      onePointOnPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      twoPointOnPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      fourPointOnPressed: () {
                        setState(() {
                          teamAPoints += 4;
                        });
                      }),
                  const VerticalDivider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 30,
                  ),
                  TeamWidget(
                      teamPoints: teamBPoints,
                      title: "Team B",
                      onePointOnPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      twoPointOnPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      fourPointOnPressed: () {
                        setState(() {
                          teamBPoints += 4;
                        });
                      }),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          PointsButton(
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            text: "Reset",
          )
        ],
      ),
    );
  }
}
