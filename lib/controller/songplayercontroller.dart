import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:on_audio_query/on_audio_query.dart';

class SongPlayerController extends GetxController {
  final player = AudioPlayer();
  RxBool isPlaying = false.obs;
  RxString currentTime = "0".obs;
  RxString totalTime = "0".obs;
  RxDouble sliderValue = 0.0.obs;
  RxDouble sliderMaxValue = 0.0.obs;
  RxString songTitle = "".obs;
  RxString songArtist = "".obs;
  RxDouble volumeLevel = 0.2.obs;

  void playLocalAudio(SongModel data) async {
    songTitle.value = data.title;
    songArtist.value = data.artist!;
    await player.setAudioSource(
      AudioSource.uri(
        Uri.parse(data.uri!),
      ),
    );
    player.play();
    updatePosition();
    isPlaying.value = true;
  }

  void changeVolume(double volume) {
    volumeLevel.value = volume;
    player.setVolume(volumeLevel.value);
  }

  void pausePlaying() async {
    isPlaying.value = true;
    await player.pause();
  }

  void resumePlaying() async {
    isPlaying.value = false;
    await player.play();
  }

  void changeSongSlider(Duration position) {
    player.seek(position);
  }

  void updatePosition() async {
    try {
      player.durationStream.listen((d) {
        totalTime.value = d.toString().split(".")[0];
        sliderMaxValue.value = d!.inSeconds.toDouble();
      });
      player.positionStream.listen((p) {
        currentTime.value = p.toString().split(".")[0];
        sliderValue.value = p.inSeconds.toDouble();
      });
    } catch (e) {
      print(e);
    }
  }
}
