import 'package:flutter/material.dart';
class ChangeLangagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Langage page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Langage page'),
        ),
        body: Center(
          child: Text('Lagage page'),
        ),
      ),
    );
  }
}