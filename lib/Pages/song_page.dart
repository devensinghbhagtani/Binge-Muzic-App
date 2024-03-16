import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songz/Pages/playsongpage.dart';
import 'package:songz/components/songheader.dart';
import 'package:songz/components/songtile.dart';
import 'package:songz/components/trendingsongslider.dart';
import 'package:songz/config/colors.dart';
import 'package:songz/controller/songdatacontroller.dart';
import 'package:songz/controller/songplayercontroller.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    SongDataController songDataController = Get.put(SongDataController());
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
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
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        songDataController.isDeviceSong.value = false;
                      },
                      child: Text(
                        "Cloud Songs",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: songDataController.isDeviceSong.value
                                  ? labelColor
                                  : primColor,
                            ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        songDataController.isDeviceSong.value = true;
                      },
                      child: Text(
                        "Device Songs",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: songDataController.isDeviceSong.value
                                  ? primColor
                                  : labelColor,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Obx(() => songDataController.isDeviceSong.value
                  ? Column(
                      children: songDataController.localSongList.value
                          .map((e) => SongTile(
                              songName: e.title,
                              onpress: () {
                                songPlayerController.playLocalAudio(e);
                                songDataController.findCurrentIndex(e.id);
                                Get.to(PlaySong());
                              }))
                          .toList())
                  : const Column(
                      children: [],
                    ))
            ],
          ),
        ),
      ),
    ));
  }
}
