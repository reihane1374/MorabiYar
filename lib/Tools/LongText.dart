import 'package:flutter/material.dart';
import 'package:morabiyar/Tools/MorabiyarColors.dart';

class LongText extends StatelessWidget {
  final String info;

  LongText({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(left: 15, right: 15,),
      //apply padding to some sides only
      child: Row(
        children: [
          Expanded(
            child: Text(
              info,
              style: const TextStyle(
                fontSize: 16,
              ),
              textDirection: TextDirection.rtl,
              softWrap: true,
              maxLines: 10, //new
            ),
          ),
        ],
      ),
    );
  }
}
