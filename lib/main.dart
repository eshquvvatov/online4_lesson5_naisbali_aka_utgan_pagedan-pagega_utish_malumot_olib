import 'package:dars5_naisbalia_utgan/first_page.dart';
import 'package:dars5_naisbalia_utgan/home_page.dart';
import 'package:dars5_naisbalia_utgan/login_page.dart';
import 'package:dars5_naisbalia_utgan/paymen_page.dart';
import 'package:dars5_naisbalia_utgan/second_page.dart';
import 'package:dars5_naisbalia_utgan/three_page.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Shop App",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        LoginPage.id:(context)=>LoginPage(),
        HomePage.id:(context)=>HomePage(massage: "hello"),
        FirstPage.id:(context)=>FirstPage(),
        PaymenPage.id:(context)=>PaymenPage(),
        SecondPage.id:(context)=>SecondPage(),
        ThreePage.id:(context)=>ThreePage(),



      },
    );
  }
}
