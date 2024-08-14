import 'package:design_system/src/shared/colors.dart';
import 'package:design_system/src/shared/styles.dart';
import 'package:flutter/material.dart';

class BoxText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const BoxText.headingOneLight(this.text, {super.key}) : style = heading1Light;
  const BoxText.headingTwoLight(this.text, {super.key}) : style = heading2Light;
  const BoxText.headingThreeRegular(this.text, {super.key}) : style = heading3Regular;
  const BoxText.headingFourRegular(this.text, {super.key}) : style = heading4Regular;
  const BoxText.headingFiveRegular(this.text, {super.key}) : style = heading5Regular;

  BoxText.body(this.text, {Color color = kcMediumGreyColor}) : style = bodyStyle.copyWith(color: color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}