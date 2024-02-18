import 'package:flutter/material.dart';
import 'package:songz/config/colors.dart';

class SongTile extends StatelessWidget {
  const SongTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: divColor.withOpacity(.7),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                color: divColor, borderRadius: BorderRadius.circular(20)),
            child: const Icon(
              Icons.play_arrow_rounded,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text("Maula Mere Maula",
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
