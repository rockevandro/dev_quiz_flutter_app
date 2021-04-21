import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
      {Key key,
      @required this.title,
      this.isCorrect = false,
      this.isSelected = false})
      : super(key: key);

  final String title;
  final bool isCorrect;
  final bool isSelected;

  Color get _selectedColorCorrect =>
      isCorrect ? AppColors.darkGreen : AppColors.darkRed;

  Color get _selectedBorderCorrect =>
      isCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedColorCardCorrect =>
      isCorrect ? AppColors.lightGreen : AppColors.lightRed;

  Color get _selectedBorderCardCorrect =>
      isCorrect ? AppColors.green : AppColors.red;

  TextStyle get _selectedTextStyleCorrect =>
      isCorrect ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;

  IconData get _selectedIconCorrect => isCorrect ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardCorrect : AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.fromBorderSide(
            BorderSide(
                color:
                    isSelected ? _selectedBorderCardCorrect : AppColors.border),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                "Kit de desenvolvimento de interface de usuário",
                style:
                    isSelected ? _selectedTextStyleCorrect : AppTextStyles.body,
              ),
            ),
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorCorrect : AppColors.white,
                shape: BoxShape.circle,
                border: Border.fromBorderSide(
                  BorderSide(
                      color: isSelected
                          ? _selectedBorderCorrect
                          : AppColors.border),
                ),
              ),
              child: isSelected
                  ? Icon(
                      _selectedIconCorrect,
                      size: 16,
                      color: AppColors.white,
                    )
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
