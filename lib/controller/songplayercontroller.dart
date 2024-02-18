import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class SongPlayerController extends GetxController {
  final player = AudioPlayer();
  RxBool isPlaying = false.obs;

  void playLocalAudio(String url) async {
    await player.setAudioSource(
      AudioSource.uri(
        Uri.parse(url),
      ),
    );
    player.play();
    isPlaying.value = true;
  }

  void pausePlaying() async {
    isPlaying.value = true;
    await player.pause();
  }

  void resumePlaying() async {
    isPlaying.value = false;
    await player.play();
  }
}