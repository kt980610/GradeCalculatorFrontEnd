//import 'dart:html';

//import 'dart:html';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/GradeCalculator/grade_calculator.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {

  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String s = '';
    double a = 0;
    double b = 0;
    double c = 0;
    double gpa = 0;

      Size size = MediaQuery.of(context).size;

      return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Grade Calculator",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                  "assets/images/calculator.jpg", height: size.height * 0.3),
              /* SvgPicture.asset(
              "assets/images/calculator.jpg",
              height: size.height * 0.25,
            ),*/
              SizedBox(height: size.height * 0.03),

              RoundedInputField(
                buttonColor: blueColor,
                hintText: "MT1: ",
                onChanged: (value) {
                  a = double.parse(value);
                },
              ),
              RoundedInputField(
                buttonColor: greenColor,
                hintText: "MT2: ",
                onChanged: (value) {
                  b = double.parse(value);
                },
              ),
              RoundedInputField(
                hintText: "FINAL: ",
                onChanged: (value) {
                  c = double.parse(value);
                },
              ),

              RoundedButton(
                text: "Calculate ",
                press: () {
                  String letter;
                  gpa = a + b + c;
                  gpa = (gpa/3).roundToDouble();
                  if(gpa < 0 || gpa >100 ) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()),);

                  }
                  else if(a < 0 || a >100 ) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()),);
                  }
                  else if(b < 0 || b >100 ) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()),);
                  }
                  else if(c < 0 || c >100 ) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ErrorPage()),);
                  }
                  else {
                  if(gpa<40) {
                  letter = 'F';

                  }
                  if(gpa>=40) {
                  letter = 'D';

                  }
                  if(gpa>=45) {
                  letter = 'D+';

                  }
                  if(gpa>=50) {
                  letter = 'C-';
                  }
                  if(gpa>=55) {
                  letter = 'C';

                  }
                  if(gpa>=65) {
                  letter = 'C+';

                  }
                  if(gpa>=73) {
                  letter = 'B-';
                  }
                  if(gpa>=78) {
                  letter = 'B';

                  }
                  if(gpa>=83) {
                  letter = 'B+';

                  }
                  if(gpa>=88) {
                  letter = 'A-';

                  }
                  if(gpa>=95) {
                  letter = 'A';

                  }

                  s = gpa.toString();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(s,letter)),);
                  }
                },
              ),



              SizedBox(height: size.height * 0.03),
             /* AlreadyHaveAnAccountCheck(
                press: () {

                },
              ),*/

            ],
          ),
        ),
      );

  }

}
