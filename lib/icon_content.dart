import 'package:flutter/material.dart';
import 'constants.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key, required this.iconGenderLogo, required this.text});

  final IconData iconGenderLogo;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconGenderLogo,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelStyle
        ),
      ],
    );
  }
}