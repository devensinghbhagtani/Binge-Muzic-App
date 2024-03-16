import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songz/config/colors.dart';

class PlaySongHeaderButton extends StatelessWidget {
  const PlaySongHeaderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Get.back();
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: divColor, borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: divColor, borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Icon(
              Icons.settings,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
