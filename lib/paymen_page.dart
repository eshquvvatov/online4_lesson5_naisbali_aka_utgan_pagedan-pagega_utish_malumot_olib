import 'dart:io';

import 'package:flutter/material.dart';

class PaymenPage extends StatefulWidget {
  const PaymenPage({Key? key}) : super(key: key);

  static const String id = "paymen_page";

  @override
  _PaymenPageState createState() => _PaymenPageState();
}

class _PaymenPageState extends State<PaymenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shop,
                  color: Colors.black,
                ))
          ],
          title: Text("PAYMEN PAGE"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            alignment: Alignment.bottomRight,
            margin: const EdgeInsets.only(right: 20, bottom: 10),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(primary: Colors.blueAccent,shape: StadiumBorder(side:BorderSide(color: Colors.black,width: 3) )),
              onPressed: () {},
              child: Text("CLICK"),
            ),
          ),
        ));
  }
}
