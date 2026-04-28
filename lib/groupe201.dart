
import 'package:flutter/material.dart';

import 'groupe202.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Payment Club'),
          backgroundColor: Colors.indigo[800],
        ),
        body: Groupe201()
    ),
  ));
}

class Groupe201 extends StatefulWidget {
  @override
  _Groupe201 createState() => _Groupe201();
}
class _Groupe201 extends State<Groupe201>{

  void allervers(BuildContext context){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => Groupe202())
      );
  }

  @override
  Widget build(BuildContext context) {

    return Row(children: [Text("prmier ecran"),ElevatedButton(onPressed:() => allervers(context), child: Text("allez vers"))]);

  }

}


