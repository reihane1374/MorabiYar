import 'package:flutter/material.dart';

class GridCard extends StatelessWidget {
  final String title;
  final String CardImg;

  GridCard(
      {super.key,
      required this.title,
      required this.CardImg});

  // final List<Map> myProducts =
  // List.generate(8, (index) => {"id": index, "name": "Product $index"})
  //     .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 2,
            mainAxisSpacing: 5,
          ),
          itemCount: 8,
          // myProducts.length,
          itemBuilder: (BuildContext ctx, index) {
            return Column(
              children: [
                Container(
                    height: 70.0,
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      // Image radius
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(35),
                        child: Image.network(CardImg, fit: BoxFit.fill),
                      ),
                    )

                    // Text(myProducts[index]["name"]),
                    ),
                Container(
                  child: Text(title),
                )
              ],
            );
          }),
    );
  }
}
