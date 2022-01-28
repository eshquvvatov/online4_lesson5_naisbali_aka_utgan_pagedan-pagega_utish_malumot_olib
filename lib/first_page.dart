import 'package:dars5_naisbalia_utgan/second_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static const String id ='first_page';

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.pushNamed(context,SecondPage.id);
          },
          color: Colors.blueAccent,
          child: Text("Second page",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}