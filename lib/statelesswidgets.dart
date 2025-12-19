import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:ContainerExamples(),
    debugShowCheckedModeBanner: false,
  ));
}


class ContainerExamples extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemples Container - Margins vs Padding'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 30),
            _buildTroisButtonCentre(),
            SizedBox(height: 30),

          ],
        ),
      ),
    );
  }



  Widget _buildTroisButtonCentre(){
    return  Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Container(
                    width: 350,
                    margin: EdgeInsets.all(20),// ← Définir une largeur explicite
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "text",
                        hintText: "hint",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Button("1"),
              SizedBox(width: 20,),
              _Button("2"),
              SizedBox(width: 20,),
              _Button("3")
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Button("4"),
          SizedBox(width: 20,),
            _Button("5"),
          SizedBox(width: 20,),
            _Button("6")
          ],
          ),
          Row()
        ],
    );
  }

  Widget _Button(String text){
    return SizedBox(
      width: 100,
      height: 50,
      child : ElevatedButton(
        onPressed: _faireAction,

        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[100],

        ),
        child: Text(text, style: TextStyle(fontSize: 40)),
      ),);
  }

  Widget _TextInput(String text, String hint){
    return Padding(
        padding: EdgeInsets.all(20.0),
        child: TextField(
          decoration: InputDecoration(
            labelText: text,
            hintText: hint,
            border: OutlineInputBorder(),
          ),
        ),
    );
  }
  Widget _buildMarginVsPaddingExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '1. Différence Margin vs Padding',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),


        Container(
          margin: EdgeInsets.all(20), // ← ESPACE AUTOUR du container
          padding: EdgeInsets.all(10),
          color: Colors.blue[100],
          child: Text(
            'Margin: EdgeInsets.all(20)\nEspace EXTERNE autour du container',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 15),

        // Container avec PADDING (espace interne)
        Container(
          padding: EdgeInsets.all(20), // ← ESPACE À L'INTÉRIEUR du container
          color: Colors.green[100],
          child: Text(
            'Padding: EdgeInsets.all(20)\nEspace INTERNE à l\'intérieur du container',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }


  Widget _buildMarginOnlyExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '2. Margin Seulement',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          color: Colors.red[200],
          height: 60,
          child: Center(
            child: Text(
              'Margin: horizontal 30, vertical 10',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),

        SizedBox(height: 10),

        Container(
          margin: EdgeInsets.only(left: 50, top: 20, bottom: 10),
          color: Colors.orange[200],
          height: 60,
          child: Center(
            child: Text(
              'Margin: left 50, top 20, bottom 10',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }


  Widget _buildPaddingOnlyExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '3. Padding Seulement',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.all(25), // ← Padding égal de tous les côtés
          color: Colors.purple[200],
          child: Text(
            'Padding: EdgeInsets.all(25)\nTexte avec beaucoup d\'espace interne',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          color: Colors.teal[200],
          child: Text(
            'Padding: horizontal 40, vertical 15',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        SizedBox(height: 10),

        Container(
          padding: EdgeInsets.only(left: 30, top: 20, right: 10),
          color: Colors.pink[200],
          child: Text(
            'Padding: left 30, top 20, right 10\nPadding asymétrique',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }


  Widget _buildMarginAndPaddingExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '4. Margin ET Padding Combinés',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        Container(
          margin: EdgeInsets.all(15),      // ← Espace EXTERNE
          padding: EdgeInsets.all(20),     // ← Espace INTERNE
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue.shade800, width: 2),
          ),
          child: Text(
            'Margin: 15 (externe)\nPadding: 20 (interne)',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }


  Widget _buildNestedContainersExample() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '5. Containers Imbriqués',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),

        // Container parent avec margin
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(25), // ← Padding du parent
          color: Colors.grey[300],
          child: Text(
            'Container PARENT - Padding: 25',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),

        // Container parent avec margin + container enfant
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          padding: EdgeInsets.all(15), // ← Padding du parent
          color: Colors.grey[300],
          child: Container(
            padding: EdgeInsets.all(10), // ← Padding de l'enfant
            color: Colors.yellow[200],
            child: Text(
              'Parent: Padding 15\nEnfant: Padding 10\nTotal Padding: 25',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),

        // Exemple visuel avec bordures
        Container(
          margin: EdgeInsets.only(top: 20, bottom: 10),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Column(
              children: [
                Text(
                  'Ligne rouge = Margin/Parent',
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Ligne bleue = Padding/Enfant',
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  VoidCallback? _faireAction() {
    print("test");
  }
}


