import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/jt_linear_progress_indicator.dart';
import 'package:flutter/material.dart';

class QuestionIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Quesão 04", style: AppTextStyles.body),
            Text("de 10", style: AppTextStyles.body),
          ]),
          SizedBox(height: 16),
          JtLinearProgressIndicator(value: 0.4)
        ],
      ),
    );
  }
}
