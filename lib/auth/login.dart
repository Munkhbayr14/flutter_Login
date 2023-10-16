import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   height: size.height * 0.3,
              // ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            "Welcome Back",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )
          // Text(
          //   "Welcome Back",
          //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          // )
        ],
      ),
    );
  }
}
