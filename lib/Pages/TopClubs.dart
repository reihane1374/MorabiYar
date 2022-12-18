import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Tools/Baner/ClubsBaner.dart';
import '../Tools/Buttons/BlueButton.dart';
import '../Tools/Buttons/RadiusButton.dart';
import '../Tools/Cards/SquareCard.dart';
import '../Tools/LongText.dart';
import '../Tools/MorabiyarColors.dart';

class TopClubs extends StatefulWidget {
   TopClubs({super.key, required this.imgCard, required this.info, required this.textCard});

  final String info;
  final String imgCard;
  final String textCard;

  @override
  State<TopClubs> createState() => _TopClubsState();
}

class _TopClubsState extends State<TopClubs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back, //Change icon here
            ),
          ),
          centerTitle: true,
          backgroundColor: kAppbar,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "باشگاه شهداب یزد",
              // widget.title,
              style: const TextStyle(fontSize:18, color: kAppbarBtn),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),

        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  ClubsBaner(),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 5.0, right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "اطلاعات باشگاه",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      )),
                  LongText(info: 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.'),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10.0,right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "رشته های ورزشی",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RadiusButton(title:"بسکتبال",onPressed:(){}),
                      RadiusButton(title:"والیبال",onPressed:(){}),
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "کلاس های آموزشی",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 180.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount: 5,
                        itemBuilder: (context, position) {
                          return SquareCard(
                              title: 'کلاس استخر',
                              onPressed: () {},
                              CardImg:
                              "https://cdn.shiraztakhfif.com/upload/entity/900/rgr-246111abc0f26ae89e2b79bcbb14193c.jpg");
                        }),
                  ),
                  BlueButton(title:"ثبت نام در باشگاه",onPressed:(){}),



                ],
              ),
            ],
          ),
        )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}