import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songz/config/colors.dart';
import 'package:songz/controller/songdatacontroller.dart';
import 'package:songz/controller/songplayercontroller.dart';

class SongControllerButtons extends StatelessWidget {
  const SongControllerButtons({super.key});

  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    SongDataController songDataController = Get.put(SongDataController());
    return Column(
      children: [
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${songPlayerController.currentTime}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Expanded(
                  child: Obx(
                () => Slider(
                  value: songPlayerController.sliderValue.value
                      .clamp(0.0, songPlayerController.sliderValue.value),
                  onChanged: (value) {
                    songPlayerController.sliderValue.value = value;

                    Duration songPosition = Duration(seconds: value.toInt());
                    songPlayerController.changeSongSlider(songPosition);
                  },
                  min: 0,
                  max: songPlayerController.sliderMaxValue.value,
                ),
              )),
              Text(
                "${songPlayerController.totalTime}",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                songDataController.playPreviousSong();
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: labelColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.keyboard_arrow_left_rounded,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Obx(
              () => songPlayerController.isPlaying.value
                  ? InkWell(
                      onTap: () {
                        songPlayerController.resumePlaying();
                      },
                      child: const Icon(
                        Icons.play_circle,
                        color: primColor,
                        size: 70,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        songPlayerController.pausePlaying();
                      },
                      child: const Icon(
                        Icons.pause_circle,
                        color: primColor,
                        size: 70,
                      ),
                    ),
            ),
            const SizedBox(
              width: 40,
            ),
            InkWell(
              onTap: () {
                songDataController.playNextSong();
              },
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: labelColor,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.keyboard_arrow_right_rounded,
                  size: 30,
                  color: labelColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Container(
            //   width: 70,
            //   height: 35,
            //   decoration: BoxDecoration(
            //     color: divColor,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: const Icon(
            //     Icons.shuffle_rounded,
            //     size: 30,
            //     color: labelColor,
            //   ),
            // ),
            Icon(
              Icons.shuffle_rounded,
              size: 25,
              color: divLightColor,
            ),

            Icon(
              Icons.loop_sharp,
              size: 25,
              color: divLightColor,
            ),

            Icon(
              Icons.play_lesson_outlined,
              size: 25,
              color: divLightColor,
            ),
            Icon(
              Icons.favorite_border_rounded,
              size: 25,
              color: divLightColor,
            ),
          ],
        )
      ],
    );
  }
}
