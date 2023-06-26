import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onPress, required this.buttonTitles});

  final void Function() onPress;
  final String buttonTitles;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            buttonTitles,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}