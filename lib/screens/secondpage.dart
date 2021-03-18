import 'package:flutter/material.dart';
import 'package:pageroute/screens/third.dart';
final TextEditingController _emailController = TextEditingController();

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
  
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('this is SecondPage'),
            Container(
              width: 250,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          SizedBox(
            width : 20,
          ),
          RaisedButton(
            onPressed: (){
              print(_emailController.text);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdPage(
                    emailValue: _emailController.text,
                  ),
                ),
              );
            },
            child: Text('Submit'),
          )

          ],
        )
      ),
    );
  }
}