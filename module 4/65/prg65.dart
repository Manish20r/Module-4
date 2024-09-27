import 'package:flutter/material.dart';


class Prg65 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           showDialog(context: context,
            builder: (BuildContext context)=>AlertDialog(
             title: Text("Alert Dialog"),
             content: Text("do you want to Exit"),

             actions: [
              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("you clicked No"))
                );
              }, child: Text("No")),

              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("you clicked Yes"))
                );
              }, child: Text("Yes")),
             ],
            ));
          },
          child: Text('Click to Exit'),
        ),
      ),
    );
  }
}