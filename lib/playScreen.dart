import 'package:flutter/material.dart';
import 'package:podcast/audio_player.dart';
import 'package:podcast/myaudio.dart';
import 'package:provider/provider.dart';
import 'secondPage.dart';

class PlayScreen extends StatefulWidget {
  @override
  _PlayScreenState createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.orangeAccent,
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    width: 40,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 175,
                  height: 175,
                  decoration: BoxDecoration(
                    color: Color(0xff101047),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: CircleAvatar(
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xffFF3737),
                            ),
                            radius: 35,
                            backgroundColor: Color(0xff2B2A67),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color(0xff2B2A67),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Song Name",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color(0xff2B2A67),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, right: 75, left: 75),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.share,
                        color: Color(0xff2B2A67),
                        size: 25,
                      ),
                      Icon(
                        Icons.download_rounded,
                        color: Color(0xff2B2A67),
                        size: 25,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Color(0xff2B2A67),
                        size: 25,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: SliderTheme(
                    data: SliderThemeData(
                      trackHeight: 5,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
                    ),
                    child: Slider(
                        min: 0,
                        max: 20,
                        value: 0,
                        activeColor: Color(0xff2B2A67),
                        inactiveColor: Colors.blue.withOpacity(0.3),
                        onChanged: (value) {}),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      child: Icon(
                        Icons.skip_previous,
                        color: Color(0xff2B2A67),
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<MyAudio>(context, listen: false)
                            .playAudio();
                      },
                      child: Icon(
                        Icons.play_arrow,
                        color: Color(0xff2B2A67),
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Icon(
                      Icons.skip_next,
                      color: Color(0xff2B2A67),
                      size: 35,
                    ),
                  ],
                ),

                // AudioFile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
