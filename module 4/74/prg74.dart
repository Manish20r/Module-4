import 'package:flutter/material.dart';
import 'package:flutter_application_1/74/prgsreen2.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => sreen2()),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}