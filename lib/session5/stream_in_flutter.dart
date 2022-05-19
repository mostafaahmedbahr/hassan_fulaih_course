import 'package:flutter/material.dart';
class StreamFlutter extends StatefulWidget {
  const StreamFlutter({Key? key}) : super(key: key);

  @override
  _FutureFlutterState createState() => _FutureFlutterState();
}

class _FutureFlutterState extends State<StreamFlutter> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(seconds: 1),(w)=>w),
      builder: (context,snap){
        return Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: Center(
            child: snap.connectionState== ConnectionState.waiting ?
            CircularProgressIndicator() : Text("${snap.data}",
            style: TextStyle(
              fontSize: 40,
            ),),
          ),
        );
      },
    );
  }
}
