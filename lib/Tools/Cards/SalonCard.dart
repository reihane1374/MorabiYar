import 'package:flutter/material.dart';

class SalonCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String CardImg;
  final String rate;
  final String address;

  const SalonCard(
      {super.key,
        required this.title,
        required this.rate,
        required this.address,
        required this.onPressed,
        required this.CardImg});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 180.0,
      child:
      Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 5,
        child: Column(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: SizedBox.fromSize(
                  size: const Size.fromRadius(85), // Image radius
                  child: Image.network(CardImg, fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(title,style: const TextStyle(fontSize:14.0 ),),
            ),
            Container(
              margin: const EdgeInsets.only(right: 15.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child:  Text(address,style: const TextStyle(fontSize:12.0,color: Colors.grey ),),

              ),),
            Container(
              margin: const EdgeInsets.only(left: 5.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(rate,style: const TextStyle(fontSize:8.0,color: Colors.grey ),),

            ),),

          ],
        ),
      ),
    );
  }
}
