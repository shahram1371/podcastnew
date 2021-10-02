import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audio_service/audio_service.dart';

// class AudioFile extends StatefulWidget {
//   final AudioPlayer advancedPlayer;
//   AudioFile({this.advancedPlayer});
//   @override
//   _AudioFileState createState() => _AudioFileState();
// }

// class _AudioFileState extends State<AudioFile> {
//   Duration duration = new Duration();
//   Duration position = new Duration();

//   final String path =
//       "https://dlw.webahang.ir/music/Track/Sedaye.Baran(10).mp3";
//   bool isPlaying = false;
//   bool isPaused = false;
//   bool isLoop = false;
//   List<IconData> icons = [Icons.play_circle_fill, Icons.pause_circle_filled];
//   @override
//   void initState() {
//     super.initState();
//     this.widget.advancedPlayer.onDurationChanged.listen((d) {
//       setState(() {
//         duration = d;
//       });
//       this.widget.advancedPlayer.onAudioPositionChanged.listen((p) {
//         setState(() {
//           position = p;
//         });
//       });
//       this.widget.advancedPlayer.setUrl(path);
//     });
//   }

//   Widget btnStart() {
//     return IconButton(
//         icon: Icon(icons[0]),
//         onPressed: () {
//           this.widget.advancedPlayer.play(path);
//         });
//   }

//   Widget loadAsset() {
//     return Container(
//       child: Row(
//         children: [
//           btnStart(),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Row(
//             children: [],
//           ),
//           loadAsset(),
//         ],
//       ),
//     );
//   }
// }
