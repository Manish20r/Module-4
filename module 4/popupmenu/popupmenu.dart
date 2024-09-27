// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/popupmenu/Homesreen.dart';
// import 'package:flutter_application_1/popupmenu/profilesreen.dart';
// import 'package:flutter_application_1/popupmenu/settingsreen.dart';

// class MyWidget extends StatefulWidget {
//   const MyWidget({super.key});

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Popup Menu"),
        
//         actions: [
//             PopupMenuButton(
              
//             onSelected: (value) {
//               if(value=="person"){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
//               }

//                 if(value=="setting"){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
//               }

//                 if(value=="homesreen"){
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));
//               }
//             },
//             itemBuilder: (context) {
//               return[
//                 PopupMenuItem(value: "person",child: Text("person")),
//                                 PopupMenuItem(value: "setting",child: Text("setting")),
//                                                 PopupMenuItem(value: "homesreen",child: Text("homesreen")),


//               ];
//             },
            
//             )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class popupmenu extends StatefulWidget {
  const popupmenu({super.key});

  @override
  State<popupmenu> createState() => _popupmenuState();
}

class _popupmenuState extends State<popupmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popup menu "),
        actions: [
          
          PopupMenuButton(
            onSelected: (value) {
              if('data'==value){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen()));
              }if('flutter'==value){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen2()));

              }
            },
            itemBuilder: (context){
            
            return [
              PopupMenuItem(value: "data",child: Text('data')),
                            PopupMenuItem(value: "flutter",child: Text('flutter')),

              
            ];
          })
        ],
      ),
      
    );
  }
}


class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('flutter')),);
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("flutter")),);
  }
}