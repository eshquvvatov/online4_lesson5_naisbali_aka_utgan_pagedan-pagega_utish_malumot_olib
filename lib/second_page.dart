import 'package:dars5_naisbalia_utgan/three_page.dart';
import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
static const String id="second_page";
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.pushNamed(context,ThreePage.id);
          },
          color: Colors.blueAccent,
          child: Text("three page",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
