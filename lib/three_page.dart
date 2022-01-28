
import 'package:dars5_naisbalia_utgan/paymen_page.dart';
import 'package:flutter/material.dart';
class ThreePage extends StatefulWidget {
  const ThreePage({Key? key}) : super(key: key);
static const String id="three_page";
  @override
  _ThreePageState createState() => _ThreePageState();
}

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.pushNamed(context,PaymenPage.id);
          },
          color: Colors.blueAccent,
          child: Text("Second page",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
