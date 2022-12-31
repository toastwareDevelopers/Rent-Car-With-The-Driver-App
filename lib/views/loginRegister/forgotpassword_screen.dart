// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rentcarmobile/constants/assets_path.dart';

import '../../utils/input_validator.dart';
import '../../utils/warning_alert.dart';

class ForgotPasswordScreen extends StatefulWidget {
  TextEditingController emailController = TextEditingController();
  ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: phoneWidth,
          height: phoneHeight*0.85,
          padding: EdgeInsets.symmetric(horizontal:phoneWidth*0.1 ),
          child: Column(
            children: <Widget>[
              Expanded(flex: 4, child: Container()),
              Expanded(
                flex: 4,
                child: Image(
                  color: Colors.white,
                  alignment: Alignment.center,
                  height: 100.0,
                  width: 100.0,
                  image: AssetImage(AssetPaths.lockPhotoIconPath),
                ),
              ),
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    "Forgot your Password?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  "Enter your email below to reset your password",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          enableSuggestions: false,
                          autocorrect: false,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) =>
                              InputValidator.validateEmail(value),
                          controller: widget.emailController,
                          decoration: InputDecoration(
                            //prefixIcon: Icon(Icons.person),
                            labelText: 'Email',
                            labelStyle: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: phoneHeight*0.01),
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            style: ButtonStyle(maximumSize: MaterialStatePropertyAll(Size.fromWidth(phoneWidth*0.25))),
                            onPressed: () {
                              if (widget.emailController.text.isEmpty == true) {
                                WarningAlert.showWarningDialog(
                                    context, "Please enter your email!", () {
                                  Navigator.pop(context);
                                });
                              } else if (!RegExp(r"""
^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""")
                                  .hasMatch(widget.emailController.text)) {
                                WarningAlert.showWarningDialog(
                                  context,
                                  "Email format is wrong!",
                                  () {
                                    Navigator.pop(context);
                                  },
                                );
                              } else {
                                // backend related
                              }
                            },
                            child: Center(
                              child: Text(
                                'Submit',
                                style: TextStyle(fontSize: 15.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(flex: 8, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
