import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
          title: Text('interface de radio buttons'),
          backgroundColor: Colors.pink[100]),

      body : MyRadio(),
    ),
  )
  );
}
class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioGroupState();
}

class _MyRadioGroupState extends State<MyRadio> {
  String _genre = "feminin";
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Column(
        children: [
          Text("choisissez votre genre :"),
          RadioGroup(groupValue: _genre,onChanged: (String? value){setState(() {
            _genre = value!;
          });},
              child: Row(children: [Radio(value: "feminin"),Text("feminin"),Radio(value: "masculin"),Text("masculin"),Radio(value: "aute"),Text("autre")],)
          )
        ],
      ),
    );
  }

}