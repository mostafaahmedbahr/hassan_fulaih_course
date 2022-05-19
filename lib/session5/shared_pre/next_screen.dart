import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  String name="";
  int age=0;
  double height = 0.0;
  bool developer = false;
  List<String> skills = ["","",""];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
      ),
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
          child: Column(
            children: [
              Text("Name : ${name}"),
              Text("Age : ${age}"),
              Text("Height : ${height}"),
              Text("Developer : ${developer}"),
              Text("Skill1 : ${skills[0]}"),
              Text("Skill2 : ${skills[1]}"),
              TextButton(
                  onPressed: ()async {
                    await getData();
                  },
                  child: Text("Get Data",
                  style: TextStyle(
                    fontSize: 40,
                  ),),
              ),
              TextButton(
                onPressed: (){
                  setState(() {
                    name=" ";
                    age=0;
                    height=0.0;
                    developer=false;
                    skills=["",""];
                  });
                },
                child: Text("reset Data",
                  style: TextStyle(
                    fontSize: 40,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
  getData()async{
    SharedPreferences pre = await SharedPreferences.getInstance();
    setState(()   {
     name=pre.getString("name")!;
     age=pre.getInt("age")!;
     height=pre.getDouble("height")!;
     developer=pre.getBool("developer")!;
     skills=pre.getStringList("skills")!;
   });

  }
}
