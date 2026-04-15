import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('Exemple Stateful Widget'),
        backgroundColor: Colors.pink[100]),

      body : ToggleButtonText(),
    ),
    )
  );
}

class ToggleButtonText extends StatefulWidget {
  @override
  _ToggleButtonTextState createState() => _ToggleButtonTextState();
}

class _ToggleButtonTextState extends State<ToggleButtonText> {

  String _nom = "";
  String _prenom = "";

  void _afficher(){
    print(_nom + " "+ _prenom);
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Column(
        children: [
          Container(padding: EdgeInsetsGeometry.all(10),
            child:TextField(
              onChanged: (String val){setState(() {
            _nom = val ;
            });},
            ) ,),
          SizedBox(height: 10,),
          Container(padding: EdgeInsetsGeometry.all(10),
            child:TextField(
            onChanged: (String val){setState(() {
              _prenom = val ;
            });},
          ) ,),
          ElevatedButton(onPressed: _afficher, child: Text("afficher"))
        ],
      )
      ,
    );

  }
}










class Compteur extends StatefulWidget {
  @override
  _CompteurWidgetState createState() => _CompteurWidgetState();
}

class _CompteurWidgetState extends State<Compteur> {
  int comp = 0;
  void _initialiser(){
    setState(() {
      comp = 0 ;
    });
  }
  void _incrementer() {
    setState(() {
      comp += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: _initialiser,
            child: Text("init", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          SizedBox(width: 20,),
          Text("$comp", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          SizedBox(width: 20,),
          ElevatedButton(
            onPressed: _incrementer,
            child: Text("add", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
        ],
      ),
    );
  }
}


