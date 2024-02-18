import 'package:flutter/material.dart';
import 'package:songz/components/songheader.dart';
import 'package:songz/components/songtile.dart';
import 'package:songz/components/trendingsongslider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const SongPageHeader(),
              const SizedBox(
                height: 20,
              ),
              const TrendingSongSlider(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Cloud Songs",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    "Device Songs",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const SongTile(),
              const SongTile(),
              const SongTile(),
              const SongTile(),
              const SongTile(),
            ],
          ),
        ),
      ),
    ));
  }
}
