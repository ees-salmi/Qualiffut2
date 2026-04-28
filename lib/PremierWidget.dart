
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Payment Club'),
          backgroundColor: Colors.indigo[800],
        ),
        body: PremierWidgets()
    ),
  ));
}

class PremierWidgets extends StatefulWidget {
  @override
  _PremierWidget createState() => _PremierWidget();
}
class _PremierWidget extends State<PremierWidgets>{

  String _selectedValue = "Adulte";
  @override
  Widget build(BuildContext context) {
//Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "italic"));
    return  Center(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text("Nombre séance par semaine : "),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "enter text",
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Categorie : "),
                    RadioGroup<String>(
                      groupValue: _selectedValue,
                      onChanged: (String? value) {
                        _selectedValue = value!;
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(value: "1"),
                          Text('Enfant'),
                          Radio<String>(value: "2"),
                          Text('Adulte'),
                        ],
                      ),
                    )
                  ],
                )
              ],
              ),
    );
  }

}


