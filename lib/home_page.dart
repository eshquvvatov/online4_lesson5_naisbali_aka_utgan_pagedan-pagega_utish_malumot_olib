import 'package:dars5_naisbalia_utgan/first_page.dart';
import 'package:dars5_naisbalia_utgan/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  final String? massage;

  const HomePage({Key? key, required this.massage}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  bool loginMassage = true;

  Future<void> _viewMassage() async {
    Future.delayed(Duration(seconds: 5));
    setState(() {
      loginMassage = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _viewMassage();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginPage.id);
            },
          )
        ],
      ),
      body: Stack(
          children: [
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MaterialButton(
                      height: 50,
                      minWidth: 300,
                      onPressed: () {
                        Navigator.pushNamed(context,FirstPage.id);
                      },
                      color: Colors.grey.shade900,
                      child: Text(
                        "First Page",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    MaterialButton(
                      height: 50,
                      minWidth: 300,
                      onPressed: () {},
                      color: Colors.grey.shade900,
                      child: Text(
                        "History",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                )),
            loginMassage ? Container(
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Container(
                height: 50,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.black,
                          offset: Offset(3, 3),
                          blurRadius: 7)
                    ]),
                child: Text(widget.massage ?? "No come message"),
              ),
            ):SizedBox.shrink()
          ]

      ),

    );
  }
}
