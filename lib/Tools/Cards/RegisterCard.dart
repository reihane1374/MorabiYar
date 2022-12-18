import 'package:flutter/material.dart';
import '../MorabiyarColors.dart';

class RegisterCard extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final String CardImg;

  const RegisterCard(
      {super.key,
        required this.title,
        required this.onPressed,
        required this.CardImg});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: 160.0,
      height: 180.0,
      child:
      Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(5),
        child: Container(
          decoration:  const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14)),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white,
                Colors.white,
                Colors.tealAccent,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child:   Column(
            children: [
              Container(
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(14)),
                ),
                margin: const EdgeInsets.only(top: 15.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(40), // Image radius
                    child: Image.asset(CardImg, fit: BoxFit.cover),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(title),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0,right: 2.0),
                child: const Text("باشگاه یا آکادمی خود را در مربی یار ثبت و مدیریت کنید",style:TextStyle(fontSize:10.0,color: Colors.grey ),textDirection: TextDirection.rtl,),
              )
            ],
          ),
        )

      ),
    );
  }
}
