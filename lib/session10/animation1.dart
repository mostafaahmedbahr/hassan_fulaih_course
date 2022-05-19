import 'dart:math';

import 'package:flutter/material.dart';
class Animation1 extends StatefulWidget {
  const Animation1({Key? key}) : super(key: key);

  @override
  _Animation1State createState() => _Animation1State();
}
class _Animation1State extends State<Animation1> {
  bool visible = true;
  double _height = 50;
  double _weight = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: AnimatedOpacity(
          opacity: visible==true? 1:0,
          duration: Duration(seconds: 1),
          child: AnimatedContainer(
            curve: Curves.easeInOutCubic,
            duration:Duration(seconds:1),
            height: _height,
            width: _weight,
            decoration: BoxDecoration(
              borderRadius: _borderRadius,
              color: _color
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            visible=!visible;
            final random = Random();
           _height =  random.nextInt(300).toDouble();
             _weight = random.nextInt(300).toDouble();
              // _color = Color.fromRGBO(
              //     random.nextInt(256),
              //     random.nextInt(256),
              //     random.nextInt(256),
              //     opacity);
              _borderRadius = BorderRadius.circular(
                random.nextInt(100).toDouble(),
              );

          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
