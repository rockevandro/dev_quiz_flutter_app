import 'package:dev_quiz/core/app_colors.dart';
import 'package:flutter/material.dart';

class JtLinearProgressIndicator extends StatelessWidget {
  final double value;

  const JtLinearProgressIndicator({Key key, @required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      backgroundColor: AppColors.chartSecondary,
      value: .3,
      valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
    );
  }
}
