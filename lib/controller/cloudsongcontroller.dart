import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:songz/Model/mysongmodel.dart';

class CloudSongController extends GetxController {
  final db = FirebaseFirestore.instance;
  RxList<MySongModel> cloudSongList = RxList<MySongModel>([]);

  void uploadSongToDB() async {
    MySongModel newSong = MySongModel(
      id: 1,
      title: "Tere Naina",
      artist: "Shankar Mahadevan",
      album: "album",
      albumArt:
          "https://c.saavncdn.com/532/Chandni-Chowk-To-China-Hindi-2008-20221122102840-500x500.jpg",
      data:
          "https://firebasestorage.googleapis.com/v0/b/binge-muzic.appspot.com/o/Tere%20Naina.mp3?alt=media&token=f4d04019-5ca6-4ea0-9342-2a5750c5f4d5",
    );
    await db.collection("songs").add(newSong.toJson());
    print("Song Uploaded");
  }

  void getCloudSong() async {
    cloudSongList.clear();
    await db.collection("songs").get().then((value) {
      value.docs.forEach((element) {
        cloudSongList.add(MySongModel.fromJson(element.data()));
      });
    });
    print(cloudSongList[1].artist);
  }
}
