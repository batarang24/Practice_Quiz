import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final VoidCallback func;
  final ans;
  Answer(this.func,this.ans);
 
  @override
  Widget build(BuildContext context) {
    return Container(
     
      width: double.infinity,
      
      child: ElevatedButton(
      child: Text(ans),
      
     /* style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        textStyle: TextStyle(color: Colors.white),
        padding: EdgeInsets.all(10)
      ),*/

    
      onPressed:func,
      ),
    );
  }
}