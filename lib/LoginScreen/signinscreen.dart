import 'package:flutter/material.dart';
import 'package:jumpr2/Components/formtextbutton.dart';
import 'package:jumpr2/Components/inputtextfield.dart';
import 'package:jumpr2/HomeScreen/homescreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.height * 0.03),
                child: Text(
                  "Sign-In",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.048,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: const TextInputField(
                  hintText: "Email",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.004,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: const TextInputField(
                  hintText: "Password",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: FormTextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  buttontitle: "Sign-In",
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                  Text(
                    'New to JUMPER?',
                    style: TextStyle(color: Colors.grey.withOpacity(0.7)),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height * 0.075,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "Create a new account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.027,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Help',
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            )
          ],
        ),
      ),
    );
  }
}
