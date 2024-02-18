import 'dart:ffi';

import 'package:get/get.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class SongDataController extends GetxController {
  final audioQuery = OnAudioQuery();
  RxBool isDeviceSong = false.obs;
  RxList<SongModel> localSongList = <SongModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getLocalSongs();
  }

  void getLocalSongs() async {
    localSongList.value = await audioQuery.querySongs(
      ignoreCase: true,
      orderType: OrderType.ASC_OR_SMALLER,
      sortType: null,
      uriType: UriType.EXTERNAL,
    );
  }

  void storagePermission() async {
    try {
      var perm = await Permission.storage.request();
      if (perm.isGranted) {
        print("Permission Granted");
        getLocalSongs();
      } else {
        print("Permission denied");
        await Permission.storage.request();
      }
    } catch (ex) {
      print(ex);
    }
  }
}
