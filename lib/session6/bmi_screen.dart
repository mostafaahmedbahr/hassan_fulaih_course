import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ex1("male"),
                    SizedBox(width: 20,),
                    ex1("female"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ex1 (String type) => Expanded(
    child: GestureDetector(
      onTap: (){
        setState(() {
          isMale =type=="male"? true : false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: (isMale && type == "male")|| (!isMale && type == "female")? Colors.teal : Colors.blueGrey,
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon( type=="male"? Icons.male : Icons.female,
              size: 90,
              color: Colors.white,
            ),
            SizedBox(height: 15,),
            Text(type=="male"? "Male" : "female",
              style: TextStyle(
                fontSize:
                30,
                color: Colors.white,
              ),
              ),
          ],
        ),
      ),
    ),
  );
}
