import 'package:flutter/material.dart';
class FutureFlutter extends StatefulWidget {
  const FutureFlutter({Key? key}) : super(key: key);

  @override
  _FutureFlutterState createState() => _FutureFlutterState();
}

class _FutureFlutterState extends State<FutureFlutter> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5),()=>print("55")),
      builder: (context,snap){
        return Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: Center(
            child: snap.connectionState== ConnectionState.waiting ?
            CircularProgressIndicator() : Text("Done"),
          ),
        );
      },
    );
  }
}
