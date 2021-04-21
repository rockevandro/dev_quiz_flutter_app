import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/pages/challenge/widgets/answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 64, bottom: 24),
            child: Text(
              "O que o Flutter faz em sua totalidade?",
              style: AppTextStyles.heading,
            ),
          ),
          Answer(
            title: "Kit de desenvolvimento de interface de usuário",
          ),
          Answer(
            title: "Kit de desenvolvimento de interface de usuário",
            isCorrect: true,
          ),
          Answer(
            title: "Kit de desenvolvimento de interface de usuário",
            isSelected: true,
          ),
          Answer(
            title: "Kit de desenvolvimento de interface de usuário",
            isCorrect: true,
            isSelected: true,
          )
        ],
      ),
    );
  }
}
