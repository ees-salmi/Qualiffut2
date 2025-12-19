import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
        title: Text('Exemple Stateful Widget'),
        backgroundColor: Colors.pink[100]),

      body : Compteur(),
    ),
    )
  );
}

class ToggleButtonText extends StatefulWidget {
  @override
  _ToggleButtonTextState createState() => _ToggleButtonTextState();
}

class _ToggleButtonTextState extends State<ToggleButtonText> {
  String _texte = "Clique-moi";

  void _changerTexte() {
    setState(() {
      _texte = (_texte == "Clique-moi") ? "Merci !" : "Clique-moi";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: _changerTexte,
        child: Text(_texte),
      ),
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


