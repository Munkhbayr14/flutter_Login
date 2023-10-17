import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_back_ios_outlined),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome Back",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam  etcc ",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          controller: _emailCtrl,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "И-мэйл хаягаа оруулна уу";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Username, Email & Phone Number",
                            contentPadding: EdgeInsets.all(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFF3F3F3),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          controller: _passCtrl,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "password-aa оруулна уу";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            contentPadding: EdgeInsets.all(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password ?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.05),
                      Container(
                        width: size.width,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(
                              () {
                                _formkey.currentState!.validate();
                              },
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(fontSize: 22),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                              backgroundColor: Color(0xFFF89AEE),
                              shadowColor: Colors.transparent),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                                  thickness: 0.9, color: Color(0xFFFFF89AEE))),
                          Text("Or Sign up With"),
                          Expanded(
                              child: Divider(
                                  thickness: 0.9, color: Color(0xFFFFF89AEE))),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/Google_logo.png",
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/Facbook.png",
                            height: 30,
                            width: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            "assets/apple.png",
                            height: 30,
                            width: 30,
                          )
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        // Text(
        //   "Welcome Back",
        //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        // ),
        //   ],
        // ),
        // Text(
        //   "Welcome Back",
        //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        // )),
      )
          // Text(
          //   "Welcome Back",
          //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          // )
          ),
    );
  }
}
