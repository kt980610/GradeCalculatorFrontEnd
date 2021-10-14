import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/GradeCalculator/components/body.dart';
import 'package:flutter_auth/Screens/Login/components/background.dart';
import 'package:flutter/src/widgets/navigator.dart';

class GradeCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }

}
class ErrorPage extends StatelessWidget {
  const ErrorPage( {Key key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
        child: SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Text(
        " Error ",
        style: TextStyle(fontWeight: FontWeight.bold),


  ),
  ],
  ),
  ),
  ),
  );
}


}
class ResultPage extends StatelessWidget {
  final String s;
  final String letter;
  const ResultPage(this.s,this.letter, {
    Key key, } ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
            child: SingleChildScrollView(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text(
            this.s + " letter grade: " + this.letter,
            style: TextStyle(fontWeight: FontWeight.bold),
        ),
        ],
        ),
        ),
        ),
    );
      }

}


