import 'package:flutter/material.dart';
import 'package:jumpr2/LoginScreen/signinscreen.dart';

import '../Components/formtextbutton.dart';
import '../Components/inputtextfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 1,
                color: Colors.grey,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.03),
                  child: Text(
                    "Hello, \nWhat's your email?",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.038,
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  child: TextInputField(
                    controller: email,
                    hintText: "Email",
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.11,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                child: FormTextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen()));
                  },
                  buttontitle: "Next",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
