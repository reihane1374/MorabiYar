import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  final String mainText;
  final String labelText;
  final VoidCallback onPressedButton;
  final Widget cardImage;
  final Color textColor;
  final Color gradiantColor;
  final Color gradiantColor1;
  final Color gradiantColor2;

  const RoundedCard(
      {super.key,
      required this.labelText,
      required this.mainText,
      required this.onPressedButton,
      required this.cardImage,
      required this.textColor,
      required this.gradiantColor,
      required this.gradiantColor1,
      required this.gradiantColor2});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 3.0,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  gradiantColor,
                  gradiantColor1,
                  gradiantColor2,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  children: [
                    cardImage,
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          mainText,
                          style: TextStyle(
                            fontSize: 13,
                            color: textColor,
                          ),
                        ),
                        Text(labelText,
                            style: TextStyle(
                              fontSize: 8,
                              color: textColor,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
