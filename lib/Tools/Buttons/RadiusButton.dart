import 'package:flutter/material.dart';
import 'package:morabiyar/Tools/MorabiyarColors.dart';

class RadiusButton extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  final String title;
  final VoidCallback onPressed;

  RadiusButton(
      {super.key,
        required this.title,
        required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 12, end: 20),
      child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 30,
            minWidth: 105,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton(
              style: raisedButtonStyle,
              onPressed: onPressed,
              child: Text(
                " " + title,
                style: TextStyle(color: Colors.black),
              ),
            ),
          )),
    );
  }
}
