import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'https://dhziran.com/wp-content/uploads/2019/03/barzinbartar.jpg',
  'https://www.tasvirezendegi.com/wp-content/uploads/2021/06/Rose-photo-for-profile-12.jpg',
  'https://dhziran.com/wp-content/uploads/2019/03/barzinbartar.jpg',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
  child: Container(
    margin: const EdgeInsets.only(left: 5.0),
    child: ClipRRect(
        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
        child: Stack(
          children: <Widget>[
            Image.network(item, fit: BoxFit.cover, width: 1000.0),
          ],
        )),
  ),
))
    .toList();

class ClubsBaner extends StatefulWidget {
  const ClubsBaner({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ClubsBanerState();
  }
}

class _ClubsBanerState extends State<ClubsBaner> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: imageSliders,
        carouselController: _controller,
        options: CarouselOptions(
            autoPlay: true,
            reverse: true,
            aspectRatio: 2.0,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            }),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imgList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
