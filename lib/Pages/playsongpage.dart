import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:songz/components/playsongheader.dart';
import 'package:songz/components/songandvolume.dart';
import 'package:songz/components/songcontrollerbutton.dart';
import 'package:songz/components/songdetails.dart';
import 'package:songz/components/songwave.dart';
import 'package:songz/config/colors.dart';
import 'package:songz/controller/songplayercontroller.dart';

class PlaySong extends StatelessWidget {
  const PlaySong({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            PlaySongHeaderButton(),
            SizedBox(
              height: 20,
            ),
            SongAndVolume(),
            SizedBox(
              height: 30,
            ),
            SongDetails(),
            SizedBox(
              height: 30,
            ),
            SongWave(),
            Spacer(),
            SongControllerButtons(),
          ],
        ),
      ),
    ));
  }
}
