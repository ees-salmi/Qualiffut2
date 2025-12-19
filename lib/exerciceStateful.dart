
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

class Compteur extends StatefulWidget {
  @override
  _CompteurWidgetState createState() => _CompteurWidgetState();
}
class _CompteurWidgetState extends State<Compteur> {
  //variable d etat
  int comp = 0;
  String _valeurRecuperee = "";
  String? selectedValue;
  List<String> items = ['Option 1', 'Option 2', 'Option 3'];
 @override
  void initState() {
    super.initState();
    selectedValue = items[0]; // Set first item as default
  }
  void changerVariableEtat(){
    setState(() {
      comp = comp + 2;
    });
  }


  void _initialiser(){
    setState(() {
      _valeurRecuperee = _controller.text;
    });
    print(_valeurRecuperee);
  }
  void _changerTexte() {
    setState(() {
      comp += 1;
    });
  }
  final TextEditingController _controller = TextEditingController();

Widget _dropdown(){
  return Container(
      width: 350 , // mediaquery pour taillde de device
      child : DropdownButton<String>(
    value: selectedValue,
    items: items.map((String item) {
      return DropdownMenuItem<String>(
        value: item,
        child: Text(item),
      );
    }).toList(),
    onChanged: (String? newValue) {
      setState(() {
        selectedValue = newValue;
      });
    },
  ));
}
Widget _textfield(){
  return Container(
    width: 350,
    margin: EdgeInsets.all(20),
    child: TextField(
      decoration: InputDecoration(
        labelText: "text",
        hintText: "hint",
        border: OutlineInputBorder(),
      ),
    ),
  );
}

  Widget _button(String value) {
    return Padding(
      // Add 8 pixels of padding/margin around all sides of the button
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        onPressed: _changerTexte,
        child: Text(
          "$value",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _textfield(),

        SizedBox(height: 20,),
        //_dropdown(),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 20,),

          _button("1"),
          //Text("$comp", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
          _button("1"),
          _button("1"),
          _button("1"),
          _button("1"),
          _button("1"),
        ],
    ),
  ]);
  }
}