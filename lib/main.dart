import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text(' stateless widgets'),
        backgroundColor: Colors.indigo[800],
      ),
      body: TwoButtons()
    ),
  ));
}

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class TwoButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsetsGeometry.fromLTRB(5, 5, 10, 5),
        child:
        ElevatedButton(
        onPressed: () {  },
        child: Text('Elevated Button',
               style: TextStyle(fontSize: 12),)
        ),
        
    ),
        Padding(padding: EdgeInsetsGeometry.fromLTRB(5, 5, 10, 5),
            child:
            ElevatedButton(
              /*style: ButtonStyle(elevation: Elevat),*/
              onPressed: () {  }, child: Text('Elevated Button', style: TextStyle(fontSize: 12),),
            ))
          ],
    );
  }

}


class TwoWidgetsColumn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

  return Container(
    alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 10.0,left: 10), // Adds 10 pixels of space above the button
      child: Column(
        children : [
          Image.asset("assets/images/user.png", width: double.infinity),
          Container(margin :EdgeInsets.only(top: 10.0,left: 10),
          child: Expanded(child:TextWidget(text: "description"))
        ),
            Container(margin :EdgeInsets.only(top: 10.0,left: 10),
          child:
          ElevatedButton(

            onPressed: () {},
            child: const Text('Second click Me'),
          ))
        ]
      )
    );
  }
}

class InputWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: "enter text",
      ),
    );
  }
}

class TextWidget extends StatelessWidget{
  String text;
  TextWidget({
    required this.text
  });
  @override
  Widget build(BuildContext context) {
    // les widget de base text
    return Container(
        alignment: Alignment.center,
        child: Row(
        children: [Text( this.text,
        style: TextStyle(fontSize: 24)
          ),Text( this.text,
        style: TextStyle(fontSize: 24)
          )],
          )


    );
  }

}

class Alignements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10),
        child: Text("hello"),
      ),Container(
        margin: const EdgeInsets.only(top: 10.0, left: 10),
        child: Text("hello"),

      )]

    );
  }
}
