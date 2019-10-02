import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('컨텐츠 제작중_190922')
      ),
      body: Center(
        child: RaisedButton(
          child: Text('컨텐츠 제작중_190922'),
          onPressed: () {
            Navigator.pushNamed(context, '/init');
          },
        ),
      ),
    );
  }
}