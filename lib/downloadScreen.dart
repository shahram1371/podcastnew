import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:podcast/myaudio.dart';
import 'package:provider/provider.dart';

class DownloadScreen extends StatefulWidget {
  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  bool downloading = false;
  var progressString = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    downloadFile();
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();
    var dir = await getApplicationDocumentsDirectory();
    try {
      await dio.download(Provider.of<MyAudio>(context, listen: false).url,
          "${dir.path}/myvoice.mp3");
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: downloading
            ? Container(
                height: 120.0,
                width: 200.0,
                child: Card(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text("Downloading File $progressString",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              )
            : Text("No Data"),
      ),
    );
  }
}
