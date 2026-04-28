
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Payment Club'),
          backgroundColor: Colors.indigo[800],
        ),
        body: Groupe202()
    ),
  ));
}

class Groupe202 extends StatefulWidget {
  @override
  _Groupe202 createState() => _Groupe202();
}
class _Groupe202 extends State<Groupe202>{

  void allervers(BuildContext context){
   /* Navigator.push(context,
        MaterialPageRoute(builder: (context) => Groupe201())
    );*/
  }

  @override
  Widget build(BuildContext context) {

    return Row(children: [Text("deusieme ecran"),ElevatedButton(onPressed:() => allervers(context), child: Text("allez vers"))]);

  }

}


