import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String CardImg;

  const BackgroundCard(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.CardImg});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 180.0,
            height: 180.0,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
                //set border radius more than 50% of height and width to make circle
              ),
              elevation: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14.0),
                child: Image.network(
                  CardImg,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 30.0,
              width: 173.0,
              margin: const EdgeInsets.only(left: 3.0, bottom: 14.0),
              decoration: const BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Container(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                ),
              )),
        )
      ],
    );
  }
}
