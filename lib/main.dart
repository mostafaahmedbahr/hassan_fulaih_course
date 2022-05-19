import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hassan_fulaih_course/section12/tic_tac_game.dart';
import 'package:hassan_fulaih_course/session10/animation1.dart';
import 'package:hassan_fulaih_course/session5/future_in_flutter.dart';
import 'package:hassan_fulaih_course/session5/shared_pre/second_page.dart';
import 'package:hassan_fulaih_course/session5/shared_pre/shared_pre.dart';
import 'package:hassan_fulaih_course/session5/shared_pre/sign.dart';
import 'package:hassan_fulaih_course/session5/stream_in_flutter.dart';
import 'package:hassan_fulaih_course/session5/url_lancher.dart';
import 'package:hassan_fulaih_course/session6/bmi_result_screen.dart';
import 'package:hassan_fulaih_course/session6/bmi_screen.dart';
import 'package:hassan_fulaih_course/session9/bloc/cubit.dart';
import 'package:hassan_fulaih_course/session9/ui/dash_board.dart';
 import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs =await SharedPreferences.getInstance();
  // var e = prefs.getString("e");
  // var p = prefs.getString("p");
  //(e != null && p != null ? SecondPage() : SignUp()
  runApp(const MyApp());
}
 class MyApp extends StatefulWidget {
   const MyApp({Key? key}) : super(key: key);
   @override
   _MyAppState createState() => _MyAppState();
 }
 class _MyAppState extends State<MyApp> {
   @override
   Widget build(BuildContext context) {
     return BlocProvider(
       create: (context)=>CounterCubit(),
       child: MaterialApp(
         theme: ThemeData(
           primarySwatch: Colors.teal,
         ),
         debugShowCheckedModeBanner: false,
         // age: 22,// result: 50,// isMale: true,
         home: TicTacGame(),
       ),
     );
   }
 }

