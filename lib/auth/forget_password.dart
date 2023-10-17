import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class forgetPassword extends StatefulWidget {
  const forgetPassword({super.key});

  @override
  State<forgetPassword> createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  final _formkey = GlobalKey<FormState>();
  final _email = TextEditingController();
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
                          controller: _email,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "И-мэйл хаягаа оруулна уу";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
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
                          controller: _emailCtrl,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "password-aa оруулна уу";
                            } else if (value != _passCtrl) {
                              return "password таарахгүй байна";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "New Password ",
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
                            } else if (value != _emailCtrl) {
                              return "password таарахгүй байна";
                            } else
                              null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Confirm New Password ",
                            contentPadding: EdgeInsets.all(20),
                          ),
                        ),
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
                            "Confirm Password",
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
