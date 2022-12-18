import 'package:flutter/material.dart';
import 'package:morabiyar/Tools/MorabiyarColors.dart';

class FlatButton extends StatelessWidget {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: kDrawerBtn,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(18)),
    ),
  );
  final String title;
  final VoidCallback onPressed;
  final Widget buttonIcon;

  FlatButton(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 12, end: 20, start: 20),
      child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 51,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ElevatedButton.icon(
              icon: buttonIcon,
              style: raisedButtonStyle,
              onPressed: onPressed,
              label: Text(
                " " + title,
                style: TextStyle(color: Colors.black),
              ),
            ),
          )),
    );
  }
}
