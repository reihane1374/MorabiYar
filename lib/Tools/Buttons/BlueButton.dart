import 'package:flutter/material.dart';
import 'package:morabiyar/Tools/MorabiyarColors.dart';

class BlueButton extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: kBlueBtn,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(27)),
    ),
  );
  final String title;
  final VoidCallback onPressed;

  BlueButton(
      {super.key,
        required this.title,
        required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 40, end: 20, start: 20,bottom: 30.0),
      child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 40,
            minWidth: 225,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton(
              style: raisedButtonStyle,
              onPressed: onPressed,
              child: Text(
                " " + title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          )),
    );
  }
}
