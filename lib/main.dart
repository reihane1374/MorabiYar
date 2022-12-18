import 'package:flutter/material.dart';
import 'Pages/TopClubs.dart';
import 'Pages/TopEducationalClasses.dart';
import 'Tools/Baner/Baner.dart';
import 'Tools/Cards/GridCard.dart';
import 'Tools/Cards/RegisterCard.dart';
import 'Tools/Cards/SalonCard.dart';
import 'Tools/Cards/SquareCard.dart';
import 'Tools/Cards/BackgroundCard.dart';
import 'Tools/Menus/DrawerMenu.dart';
import 'Tools/MorabiyarColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(
        title: 'مربی یار',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              print("Hello click");
            },
            child: const Icon(
              Icons.account_box_outlined, //Change icon here
            ),
          ),
          centerTitle: true,
          backgroundColor: kAppbar,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 24, color: kDarkBlue),
          ),
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        endDrawer: const DrawerMenu(),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  const AdvertisementBaner(),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 5.0, bottom: 10.0, right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "باشگاه های برتر",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 190.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount: 5,
                        itemBuilder: (context, position) {
                          return BackgroundCard(
                              title: 'باشگاه شهداب یزد',
                              onPressed: () {
                                print("object");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TopClubs(
                                          info:
                                              'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',
                                          textCard: 'کلاس استخر',
                                          imgCard:
                                              "https://cdn.shiraztakhfif.com/upload/entity/900/rgr-246111abc0f26ae89e2b79bcbb14193c.jpg")),
                                );
                              },
                              CardImg:
                                  "https://dhziran.com/wp-content/uploads/2019/03/barzinbartar.jpg");
                        }),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "کلاس های آموزشی برتر",
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
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          TopEducationalClasses(
                                            info:
                                                'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای زیادی در شصت و سه درصد گذشته حال و آینده، شناخت فراوان جامعه و متخصصان را می طلبد، تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی، و فرهنگ پیشرو در زبان فارسی ایجاد کرد، در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها، و شرایط سخت تایپ به پایان رسد و زمان مورد نیاز شامل حروفچینی دستاوردهای اصلی، و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.',
                                          )),
                                );
                              },
                              CardImg:
                                  "https://cdn.shiraztakhfif.com/upload/entity/900/rgr-246111abc0f26ae89e2b79bcbb14193c.jpg");
                        }),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "مربیان برتر",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 200.0,
                    child: GridCard(
                        title: 'کواچ',
                        CardImg:
                            "https://www.parsnaz.com/images/2015/03/692566896-parsnaz-ir.jpg"),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10.0, bottom: 10.0, right: 10.0),
                      child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          "سالن های ورزشی برتر",
                          style: TextStyle(
                              fontSize: 21.0, fontWeight: FontWeight.bold),
                        ),
                      )),
                  SizedBox(
                    height: 250.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        reverse: true,
                        itemCount: 5,
                        itemBuilder: (context, position) {
                          return SalonCard(
                            title: 'چمن مصنوعی جام جم',
                            CardImg:
                                "https://toopita.com/uploads/2019/11/fe082c7f-4882-41cc-9607-c41dc5dde159-medium.jpg",
                            rate: '5 از 5',
                            address: 'یزد بلوار مدرس',
                            onPressed: () {},
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RegisterCard(
                          onPressed: () {},
                          CardImg: "images/Register.png",
                          title: "ثبت نام باشگاه یا آکادمی"),
                      RegisterCard(
                          onPressed: () {},
                          CardImg: "images/Community.png",
                          title: "ثبت نام هیأت های ورزشی"),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            ],
          ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
