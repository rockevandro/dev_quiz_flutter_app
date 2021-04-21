import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/widgets/jt_linear_progress_indicator.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 160,
      decoration: BoxDecoration(
          border: Border.fromBorderSide(BorderSide(color: AppColors.border)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppImages.data),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "Gerenciamento de Estado",
              style: AppTextStyles.heading15,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 21),
                child: Text(
                  "3 de 10",
                  style: AppTextStyles.body11,
                ),
              ),
              Expanded(
                child: JtLinearProgressIndicator(value: 0.3),
              )
            ],
          )
        ],
      ),
    );
  }
}
