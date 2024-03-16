import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songz/config/colors.dart';
import 'package:songz/controller/songplayercontroller.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SongAndVolume extends StatefulWidget {
  const SongAndVolume({super.key});
  @override
  State<SongAndVolume> createState() => _SongAndVolumeState();
}

class _SongAndVolumeState extends State<SongAndVolume> {
  var value = 30.0;
  @override
  Widget build(BuildContext context) {
    SongPlayerController songPlayerController = Get.put(SongPlayerController());
    return Obx(
      () => SfRadialGauge(
        animationDuration: 1,
        enableLoadingAnimation: true,
        axes: [
          RadialAxis(
            useRangeColorForAxis: true,
            startAngle: 0,
            endAngle: 180,
            canRotateLabels: false,
            interval: 10,
            isInversed: false,
            maximum: 1,
            minimum: 0,
            showAxisLine: true,
            showLabels: false,
            showTicks: false,
            ranges: [
              GaugeRange(
                startValue: 0,
                endValue: songPlayerController.volumeLevel.value,
                color: primColor,
              )
            ],
            pointers: [
              MarkerPointer(
                color: primColor,
                value: songPlayerController.volumeLevel.value,
                onValueChanged: (value) {
                  songPlayerController.changeVolume(value);
                },
                enableAnimation: true,
                enableDragging: true,
                markerType: MarkerType.circle,
                markerWidth: 20,
                markerHeight: 20,
              )
            ],
            annotations: [
              GaugeAnnotation(
                  horizontalAlignment: GaugeAlignment.center,
                  widget: Container(
                    width: 210,
                    height: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/dear_zindagi.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
