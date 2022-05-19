import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'next_screen.dart';
class SharedPre extends StatefulWidget {
  const SharedPre({Key? key}) : super(key: key);

  @override
  _SharedPreState createState() => _SharedPreState();
}

class _SharedPreState extends State<SharedPre> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
                builder: (context)=>NextScreen(),
            ),
            );
          },
          child: Text("Next Screen",
          style: TextStyle(
            fontSize: 40,
          ),),
        ),
      ),
    );
  }

    setData()async{
    SharedPreferences pre = await SharedPreferences.getInstance();
    pre.setString("name", "mostafa bahr");
    pre.setInt("age", 20);
    pre.setDouble("height",174.2);
    pre.setBool("developer",true);
    pre.setStringList("skills",["fast","good"]);

    }
}
