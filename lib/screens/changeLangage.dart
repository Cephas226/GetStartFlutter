import 'package:GetStartApp/main.dart';
import 'package:flutter/material.dart';
class ChangeLangagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Langage page',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Langage page'),
          backgroundColor: Colors.orange,
          leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
              onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
          },
        ),
        ),
        body: Center(
          child: Text('Langage page'),
        ),
      ),
    );
  }
}