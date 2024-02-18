import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:songz/config/colors.dart';

class TrendingSongSlider extends StatelessWidget {
  const TrendingSongSlider({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> sliderItem = [
      Container(
        padding: const EdgeInsets.all(20),
        height: 300,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/dear.jpg"), fit: BoxFit.cover),
          color: divColor,
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: divColor, borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.music_note,
                        size: 10,
                        color: labelColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Trending",
                          style: Theme.of(context).textTheme.labelSmall),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Text(
              "Dear Zindagi",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "Sanjith Hegde",
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    ];
    return CarouselSlider(
        items: sliderItem,
        options: CarouselOptions(
          height: 300,
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 6),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index, value) {},
          scrollDirection: Axis.horizontal,
        ));
  }
}
