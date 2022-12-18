import 'package:flutter/material.dart';
import 'package:morabiyar/Tools/Cards/RoundedCard.dart';
import '../Buttons/FlatButton.dart';
import '../MorabiyarColors.dart';

class DrawerMenu extends StatelessWidget
{const DrawerMenu({super.key}) ;
@override
Widget build(BuildContext context) {
  // TODO: implement build
  return Drawer(
    child: Container(
      decoration: BoxDecoration(
          color: Theme.of(context).dialogTheme.backgroundColor,
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(4))
      ),

      child: ListView(
        children: <Widget>[
          // Divider(color: Theme.of(context).colorScheme.secondaryVariant,endIndent: 10,indent: 10,),
          const Text("مربی یار",style: TextStyle(color: kDarkBlue,fontSize: 38,),textAlign: TextAlign.center,),
          const Text("سامانه جامع مدریت باشگاه ها",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          const Text("morabi-yar.ir",style: TextStyle(fontSize: 14,color: kLightGrey,),textAlign: TextAlign.center),

          Container(
            height: 25.0,
          ),

          RoundedCard(labelText: "باشگاه یا آکادمی خود را انتخاب کنید", mainText: "ثبت نام باشگاه یا آکادمی", onPressedButton: (){} , cardImage: Image.asset("images/Register.png",width: 30.0,height: 30.0,), textColor: Colors.white,gradiantColor:kGradiantCard,gradiantColor1:kGradiantCard2,gradiantColor2:kGradiantCard3),
          RoundedCard(labelText: "باشگاه یا آکادمی خود را انتخاب کنید", mainText: "ثبت نام هیأت های ورزشی", onPressedButton: (){}, cardImage: Image.asset("images/Community.png",width: 30.0,height: 30.0,), textColor: Colors.black,gradiantColor:kGradiantCard4,gradiantColor1:kGradiantCard5,gradiantColor2:kGradiantCard6),

      Container(
        height: 25.0,
      ),

      FlatButton(
            title: 'درباره مربی یار',
            buttonIcon: Image.asset("images/AboutMe.png",width: 30.0,height: 30.0,),
            onPressed: (){
              Navigator.pop(context);
              // Navigator.of(context).push(
              //   CupertinoPageRoute<void>(builder: (BuildContext context) {
              //     return Account(app_id: app_id,userData: userData,);
              //   }),
              // );
            }, key: null,
          ),
          FlatButton(
            title: 'پشتیبانی',
            buttonIcon: Image.asset("images/Support.png",width: 30.0,height: 30.0,),
            onPressed: (){
              Navigator.pop(context);
              // Navigator.of(context).push(
              //   CupertinoPageRoute<void>(builder: (BuildContext context) {
              //     return Account(app_id: app_id,userData: userData,);
              //   }),
              // );
            }, key: null,
          ),
          FlatButton(
            title: 'انتقادات و پیشنهادات',
            buttonIcon: Image.asset("images/Suggestions.png",width: 30.0,height: 30.0,),
            onPressed: (){
              Navigator.pop(context);
              // Navigator.of(context).push(
              //   CupertinoPageRoute<void>(builder: (BuildContext context) {
              //     return Account(app_id: app_id,userData: userData,);
              //   }),
              // );
            }, key: null,
          ),
          FlatButton(
            title: 'معرفی به دوستان',
            buttonIcon: Image.asset("images/Introduce.png",width: 30.0,height: 30.0,),
            onPressed: (){
              Navigator.pop(context);
              // Navigator.of(context).push(
              //   CupertinoPageRoute<void>(builder: (BuildContext context) {
              //     return Account(app_id: app_id,userData: userData,);
              //   }),
              // );
            }, key: null,
          ),
          //

        ],
      ),
    ),
  ) ;

}

}