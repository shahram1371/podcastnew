import 'package:flutter/material.dart';
import 'package:podcast/secondPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 30.0),
              child: Text(
                "Listen to your",
                style: TextStyle(
                    fontSize: 40.0,
                    color: Color(0xff101047),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Trajan Pro'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("favourite",
                  style: TextStyle(
                      fontSize: 60.0,
                      color: Color(0xff101047),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Trajan Pro')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                "authors",
                style: TextStyle(
                    fontSize: 60.0,
                    color: Color(0xff101047),
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Trajan Pro'),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Container(
                width: 300.0,
                height: 200.0,
                child: Center(
                  child: Image(
                    image: AssetImage(
                      'assets/images/image.jpg',
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffFFCD5A),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: Center(
                child: Container(
                  height: 80.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Color(0xff101047),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "START NOW",
                      style: TextStyle(
                          color: Colors.white,
                          // fontFamily: 'Schyler',
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
