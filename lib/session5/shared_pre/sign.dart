import 'package:flutter/material.dart';
import 'package:hassan_fulaih_course/session5/shared_pre/second_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var emailCon = TextEditingController();
  var passCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
                icon: Icon(Icons.email),
              ),
              controller: emailCon,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "password",
                icon: Icon(Icons.lock),
              ),
              controller: passCon,
            ),
            TextButton(
              onPressed: () async{
                SharedPreferences prefs =await SharedPreferences.getInstance();
                prefs.setString("e", emailCon.text);
                prefs.setString("p", passCon.text);

                Navigator.pushReplacement(context,
                    MaterialPageRoute(
                        builder: (context)=>SecondPage(),
                    ),
                );
              },
              child: Text("LoGin",
              style: TextStyle(
                fontSize: 25
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
