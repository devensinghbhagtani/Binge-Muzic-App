import 'package:flutter/material.dart';
import 'package:songz/config/colors.dart';

class SongDetails extends StatelessWidget {
  const SongDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(
              Icons.play_arrow_outlined,
              color: labelColor,
            ),
            Text(
              "210 Plays",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Love you Zindagi",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Row(
              children: [
                Icon(
                  Icons.favorite_border_rounded,
                  color: labelColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.download_for_offline_outlined,
                  color: labelColor,
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "Jubin Nautiyal",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
