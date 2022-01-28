import 'package:dars5_naisbalia_utgan/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "login_page";


  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {

  void _openHomePage(){// pushReplacement bitta pagedan ikkinchi pajaga malumot utkazishda yaxshi
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage(massage: "Hello",),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(// safeArea - Bu hamma telifonlaga  tushish uchun ishlatiladi bu saqlaydi va moslashadi;
      child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),

              ),
              SizedBox(height: 100,),
              // username
              Row(
                children: [
                  Text("userName:",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                  Text("Nasibali:",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),

                ],
              ),
              SizedBox(height: 100,),

              Row(
                children: [
                  Text("password:   ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),
                  Text("******:",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),

                ],
              ),
              SizedBox(height: 100,),
              MaterialButton(onPressed:() {_openHomePage();},


                shape: StadiumBorder(),
                height: 45,
                minWidth: 250,
              color: Colors.blueAccent,
                child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.white),),
              ),
              SizedBox(height: 100,),
              //reset
              Text("Reset Password",style: TextStyle(fontSize: 18,color: Colors.grey),)
            ],
          )),
    ));
  }
}
