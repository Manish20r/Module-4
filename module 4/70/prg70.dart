import 'package:flutter/material.dart';
import 'package:flutter_application_1/70/sreen1.dart';
import 'package:flutter_application_1/70/sreen2.dart';
import 'package:flutter_application_1/70/sreen3.dart';


class Prg70 extends StatefulWidget {
  const Prg70({super.key});

  @override
  State<Prg70> createState() => _Prg70State();
}

class _Prg70State extends State<Prg70> {
  var listpage=[const Sreen1(),Sreen2(),Sreen3()];
  int selecteditem =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Bar"),),
      body: Center(
        child: listpage[selecteditem],
      ),
      bottomNavigationBar: BottomNavigationBar(items: 
      <BottomNavigationBarItem>[
       BottomNavigationBarItem(icon: Icon(Icons.photo),label: "Home"),
       BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "Person"),
       BottomNavigationBarItem(icon: Icon(Icons.browse_gallery),label: "Settion")

      ],
      currentIndex: selecteditem,
      onTap: (setValue){
       setState(() {
         selecteditem=setValue;
       });
      },
      ),
    );
  }
}