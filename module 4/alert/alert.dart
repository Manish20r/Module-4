import 'package:flutter/material.dart';

class Prg63 extends StatefulWidget {
  const Prg63({super.key});

  @override
  State<Prg63> createState() => _Prg63State();
}

class _Prg63State extends State<Prg63> {

  void _alertdialogState(){
    showDialog(context: context, builder: 
    (BuildContext context)=>AlertDialog(
      title: Text("Alert Box"),
      content: Text("The is a alert box"),
      actions: [ 
        
        
        Row(children: [
        
             
          TextButton(onPressed: (){
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(" yes"))
            );
          }, child: Text("positive")),
        
           TextButton(onPressed: (){
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("NO"))
            );
          }, child: Text("negative")),
        
           TextButton(onPressed: (){
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(" maybe"))
            );
          }, child: Text("neutral")),
         ],),
      

      ],
    )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          _alertdialogState();
        }, child: Text("Click")),
      ),
    );
  }
}