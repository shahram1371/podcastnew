import 'package:flutter/material.dart';
import 'playScreen.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
              child: Column(
                children: [
                  Row(
                    textBaseline: TextBaseline.ideographic,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Podcast",
                        style: TextStyle(
                            color: Color(0xff101047),
                            fontSize: 38,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Schyler'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffFFCD5A),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 95,
                        height: 75,
                        child: Image(
                            image: AssetImage(
                          'assets/images/image.jpg',
                        )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  MusicCo(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MusicCo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, left: 10.0),
            child: Container(
              height: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Color(0xffF6F5F8),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 10),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Center(
                                        child: Text(
                                      "K",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.0),
                                    )),
                                    width: 70.0,
                                    height: 70.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xff101047),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Song Name",
                                    style: TextStyle(
                                      color: Color(0xff101047),
                                      fontSize: 18.0,
                                    ),
                                  )
                                ],
                              ),
                              Text("Singer Name",
                                  style: TextStyle(
                                      color: Color(0xff101047), fontSize: 15.0))
                            ],
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => PlayScreen(),
                          );
                        },
                        child: Container(
                          width: 30.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Color(0xffFF3737)),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: Color(0xffFF3737),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
