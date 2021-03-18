import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final emailvalue;

  const ThirdPage({Key key, this.emailvalue, emailValue}) : super(key: key);
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third page'),
      ),
      body: Center(
        child: Text('this is ThirdPage'),
      ),
    );
  }
}