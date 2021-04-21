import 'package:dev_quiz/core/core.dart';
import 'package:dev_quiz/shared/enums/level.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButton extends StatelessWidget {
  final Level type;

  const LevelButton({Key key, @required this.type}) : super(key: key);

  get _config => {
        Level.Ease: {
          "label": "Fácil",
          "backgroundColor": AppColors.levelButtonFacil,
          "textColor": AppColors.levelButtonTextFacil,
          "borderColor": AppColors.levelButtonBorderFacil
        },
        Level.Medium: {
          "label": "Médio",
          "backgroundColor": AppColors.levelButtonMedio,
          "textColor": AppColors.levelButtonTextMedio,
          "borderColor": AppColors.levelButtonBorderMedio
        },
        Level.Hard: {
          "label": "Difícil",
          "backgroundColor": AppColors.levelButtonDificil,
          "textColor": AppColors.levelButtonTextDificil,
          "borderColor": AppColors.levelButtonBorderDificil
        },
        Level.VeryHard: {
          "label": "Perito",
          "backgroundColor": AppColors.levelButtonPerito,
          "textColor": AppColors.levelButtonTextPerito,
          "borderColor": AppColors.levelButtonBorderPerito
        }
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 80,
      decoration: BoxDecoration(
          color: _config[type]["backgroundColor"],
          borderRadius: BorderRadius.circular(28),
          border: Border.fromBorderSide(
              BorderSide(color: _config[type]["borderColor"]))),
      child: Center(
        child: Text(
          _config[type]["label"],
          style: GoogleFonts.notoSans(
            color: _config[type]["textColor"],
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
