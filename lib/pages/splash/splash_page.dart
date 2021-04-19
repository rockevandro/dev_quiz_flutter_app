import 'package:dev_quiz/core/core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(gradient: AppGradients.linear),
      child: Center(
        child: Image(
          image: AssetImage(AppImages.logo),
        ),
      ),
    );
  }
}
