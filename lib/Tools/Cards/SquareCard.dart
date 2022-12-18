import 'package:flutter/material.dart';

class SquareCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String CardImg;

  const SquareCard(
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
          child: SizedBox(
            width: 160.0,
            height: 180.0,
            child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0),
              ),
              elevation: 5,
              margin: const EdgeInsets.all(5),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    margin: const EdgeInsets.only(top: 15.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(60), // Image radius
                        child: Image.network(CardImg, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(title),
                  )
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
              height: 25.0,
              width: 75.0,
              margin: const EdgeInsets.only(left: 45.0, top: 25.0),
              padding: const EdgeInsets.only(bottom: 3.0),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 3.0, bottom: 0.0),
                child: const Text(
                  "تخفیف ویژه",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              )),
        )
      ],
    );
  }
}
