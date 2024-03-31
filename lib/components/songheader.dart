import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:songz/config/colors.dart';

class SongPageHeader extends StatelessWidget {
  const SongPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/icons/music_logo.svg",
          width: 40,
          color: primColor,
        ),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "Music Melody",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
