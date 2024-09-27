import 'package:flutter/material.dart';

class alertdialog extends StatefulWidget {
  const alertdialog({super.key});

  @override
  State<alertdialog> createState() => _alertdialogState();
}

class _alertdialogState extends State<alertdialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
    title: Text("Alert Dialog"),
   ),
   body: Center(
     child: ElevatedButton(onPressed: (){
      showDialog(context: context, builder: 
      (BuildContext context)=>AlertDialog(
        title: Text("Alert Box"),
        content: Text("the is alert box"),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Ok"))
        ],
      )
      );
     }, child: Text("Click")),
   ),
    );
  }
}