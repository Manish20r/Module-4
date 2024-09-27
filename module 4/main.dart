import 'package:flutter/material.dart';
import 'package:flutter_application_1/64/prg64.dart';

import 'package:flutter_application_1/70/prg70.dart';
import 'package:flutter_application_1/74/prg74.dart';
import 'package:flutter_application_1/76/prg76.dart';
import 'package:flutter_application_1/78/prg78.dart';
import 'package:flutter_application_1/Myalertdialog/alertdialog.dart';
import 'package:flutter_application_1/alert/alert.dart';
import 'package:flutter_application_1/popupmenu/popupmenu.dart';


void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: popupmenu()
    );
  }
}
