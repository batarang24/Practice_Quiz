import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class  Question extends StatelessWidget {
  final question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(question,
      style: TextStyle(fontSize: 25),
      textAlign: TextAlign.center,
      ),
    );
  }
}