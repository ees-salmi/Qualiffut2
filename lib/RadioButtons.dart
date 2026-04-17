import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(
          title: Text('interface de radio buttons'),
          backgroundColor: Colors.pink[100]),

      body : MyRadioGroup(),
    ),
  )
  );
}
class MyRadioGroup extends StatefulWidget {
  const MyRadioGroup({super.key});

  @override
  State<MyRadioGroup> createState() => _MyRadioGroupState();
}

class _MyRadioGroupState extends State<MyRadioGroup> {

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
                 Text('Option 1'),
                 Radio<String>(value: "2"),
                 Text('Option 2'),
                 Radio<String>(value: "3"),
                 Text('Option 3'),
              ],
            ),
          ),
          ElevatedButton(onPressed: _getValue, child: Text("get valeur"))
        ],
          ),
      ),
    );
  }
}
