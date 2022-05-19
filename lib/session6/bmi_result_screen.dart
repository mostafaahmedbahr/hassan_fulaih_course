import 'package:flutter/material.dart';
import 'package:hassan_fulaih_course/session6/constants.dart';
class BmiResultScreen extends StatelessWidget {
    BmiResultScreen({
    required this.age,
    required this.result,
    required this.isMale});

  final int age;
  final double result;
  final bool isMale;

  String get resultPhase{
    String resultText= "";
    if(result>=30) resultText = "Obese";
    else if (result >25 && result <30) resultText = "OverWeight";
    else if( result>=18.5 && result <=25) resultText = "Normal";
    else resultText = "Thin";
    return resultText ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Bmi Result Screen"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Gender : ${isMale? "Male":"Female"}",
              style:  s),
              Text("Result : ${result.toStringAsFixed(2)}",
                style:s),
              Text("Healthiness : ${resultPhase}",
                textAlign: TextAlign.center,
                style:s),
              Text("Age : ${age}",
                style:s),
            ],
          ),
        ),
      ),
    );
  }
}
