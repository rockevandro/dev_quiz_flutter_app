import 'package:dev_quiz/pages/home/widgets/home_app_bar.dart';
import 'package:dev_quiz/pages/home/widgets/level_button.dart';
import 'package:dev_quiz/pages/home/widgets/quiz_card.dart';
import 'package:dev_quiz/shared/enums/level.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButton(type: Level.Ease),
                LevelButton(type: Level.Medium),
                LevelButton(type: Level.Hard),
                LevelButton(type: Level.VeryHard),
              ],
            ),
            SizedBox(
              height: 24,
            ),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                  QuizCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
