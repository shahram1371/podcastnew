import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'audio_player.dart';
import 'package:flutter/material.dart';

class MyAudio extends ChangeNotifier {
  MyAudio() {
    initAudio();
  }
  AudioPlayer audioPlayer = AudioPlayer();
  String audioState;
  Duration totalduration;
  Duration position;
  // final player = AudioCache();
  // player.play(fileName)
  String url =
      "https://irsv.upmusics.com/99/Reza%20Marzdashti%20%7C%20Vay%20Delam%20(128).mp3?_ga=2.239241731.1627605893.1633178579-1547583649.1633178579";
  initAudio() {
    audioPlayer.onDurationChanged.listen((updatedDuration) {
      totalduration = updatedDuration;
      notifyListeners();
    });
    audioPlayer.onAudioPositionChanged.listen((updatePosition) {
      position = updatePosition;
      notifyListeners();
    });

    audioPlayer.onPlayerStateChanged.listen((playerState) {
      if (playerState == PlayerState.STOPPED) {
        audioState = "Stopped";
      }
      if (playerState == PlayerState.PLAYING) {
        audioState = "Playing";
      }
      if (playerState == PlayerState.PAUSED) {
        audioState = "Paused";
      }
      notifyListeners();
    });
  }

  List<IconData> icons = [Icons.play_arrow, Icons.pause];
  List<Color> colors = [Color(0xff2B2A67), Color(0xffFF3737)];

  pauseAudio() {
    audioPlayer.pause();
  }

  stopAudio() {
    audioPlayer.stop();
  }

  playAudio() {
    audioPlayer.play(url);
  }

  seekAudio(Duration durationToSeek) {
    audioPlayer.seek(durationToSeek);
  }
}
