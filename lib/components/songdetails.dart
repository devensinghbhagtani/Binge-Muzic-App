import 'package:flutter/material.dart';
import 'package:songz/config/colors.dart';

class SongDetails extends StatelessWidget {
  final String songTitle;
  final String artistName;
  const SongDetails(
      {super.key, required this.songTitle, required this.artistName});

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
            Flexible(
              child: Text(
                "$songTitle",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
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
              "$artistName",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
