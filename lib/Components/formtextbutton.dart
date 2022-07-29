import 'package:flutter/material.dart';

class FormTextButton extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final buttontitle;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;
  const FormTextButton({Key? key, this.buttontitle, this.onPressed})
      : super(key: key);

  @override
  State<FormTextButton> createState() => _FormTextButtonState();
}

class _FormTextButtonState extends State<FormTextButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.075,
        decoration: BoxDecoration(
            color: const Color(0xff3096FF), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            widget.buttontitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.027,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    );
  }
}
