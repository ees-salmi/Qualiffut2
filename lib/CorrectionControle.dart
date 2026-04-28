import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
          title: Text('interface de radio buttons'),
          backgroundColor: Colors.pink[100]),

      body : Correctioncc1(),
    ),
  )
  );
}
class Correctioncc1 extends StatefulWidget {
  const Correctioncc1({super.key});

  @override
  State<Correctioncc1> createState() => _Correctioncc1State();
}

class _Correctioncc1State extends State<Correctioncc1> {

  String? _selectedValue = "1";

  void _getValue(){
    if(_selectedValue == "1"){
      print("vous avez séléctionné la valeur 1");
    }
    else if(_selectedValue == "2"){
      print("vous avez séléctionné la valeur 2");
    }
    else{
      print("vous avez séléctionné la valeur 3");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
          children: [
            Row(
              children: [
              Text("Nombre de séances par semaine"),
                TextField()
              ]
            ),
            Row( children: [
               Text("Catégorie"),
               RadioGroup<String>(
              groupValue: _selectedValue,
              onChanged: (String? value) {
                setState(() {
                  _selectedValue = value;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Radio(value: "1"),
                  Text('Adulte 1'),
                  Radio<String>(value: "2"),
                  Text('Enfant 2'),
                ],
              ),
            ),
            ]),
            ElevatedButton(onPressed: _getValue, child: Text("get valeur"))
          ],
        ),
      ),
    );
  }
}
