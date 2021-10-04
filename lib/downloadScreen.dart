import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:podcast/myaudio.dart';
import 'package:provider/provider.dart';
import 'package:permission_handler/permission_handler.dart';

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
    getPermission();
  }

  Future<void> downloadFile() async {
    Dio dio = Dio();
    var dir = await getApplicationDocumentsDirectory();
    try {
      await dio.download(Provider.of<MyAudio>(context, listen: false).url,
          "${dir.path}/myvoice.mp3", onReceiveProgress: (rec, total) {
        //  "${dir.path}/myvoice.mp3"
        setState(() {
          downloading = true;
          progressString = ((rec / total) * 100).toStringAsFixed(0) + "%";
          print("${dir.path}/myvoice.mp3()");
        });
      });
    } catch (e) {
      print(e);
    }
    setState(() {
      downloading = false;
      progressString = "Completed";
    });
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
            : TextButton(
                child: Text("No data"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
      ),
    );
  }

  void getPermission() {}
}
