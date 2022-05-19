import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncher extends StatefulWidget {
  const UrlLauncher({Key? key}) : super(key: key);

  @override
  _UrlLauncherState createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  var url = "https://play.google.com/store/apps/details?id=com.facebook.lite";
  var url2= "https://www.youtube.com/watch?v=ruw_sDU8Lv0&list=RDruw_sDU8Lv0&start_radio=1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(
          onPressed: ()async{
            await launch(url,
            forceWebView: true,
            );
          },
          child: Text("Go To ",
          style: TextStyle(
            fontSize: 40,
          ),),
        ),
      ),
    );
  }
}
