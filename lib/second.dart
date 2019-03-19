import 'package:flutter/material.dart';
import 'package:provide/provide.dart';
import './provide/Counter.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Number(),
      )
    );
  }
}


class Number extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200.0),
      child: Provide<Counter>(
        builder: (context, child,counter) {
          return Text('${counter.value}',style: TextStyle(fontSize: 30.0),);
        },
      )
    );
  }
}