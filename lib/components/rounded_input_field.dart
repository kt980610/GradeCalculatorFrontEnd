import 'package:flutter/material.dart';
import 'package:flutter_auth/components/text_field_container.dart';
import 'package:flutter_auth/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color buttonColor;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.buttonColor = kPrimaryColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      c: buttonColor,
      child: TextField(
        onChanged: onChanged,
        cursorColor: blueColor,
        decoration: InputDecoration(
          icon: Icon(
            this.icon,
            color: blueColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
