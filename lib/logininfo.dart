import 'package:flutter/material.dart';
import 'package:fluttertest/model/Etudiant.dart';
import 'package:fluttertest/list.dart';
import 'deuxiemescreen.dart';
import 'package:fluttertest/model/Salle.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(' stateless widgets'),
          backgroundColor: Colors.indigo[800],
        ),
        body: ListeEtudiantsScreen()
    ),
  ));
}

class Login extends StatefulWidget {
  @override
  _LoginWidget createState() => _LoginWidget();
}
class _LoginWidget extends State<Login> {
  Salle s = new Salle(1,"salle1");
  int comp = 0;
  bool isVisible = false;
  List<Etudiant> list = [];
  late final mediaQueryData = MediaQuery.of(context);

  late final screenWidth = MediaQuery.sizeOf(context).width;
  late final screenHeight = MediaQuery.sizeOf(context).height;
  final style = TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black26 );
  @override
  void initState() {
    super.initState();
    comp = 0; // val initial
  }
  void changerVariableEtat(){
    setState(() {
      comp = comp + 2;
    });
  }



  void calculerSomme(){
    String valeur1 = _controller.text ;
    String valeur2 = _controller2.text;
    list.add(Etudiant(1, valeur1, valeur2));

    //int somme = int.parse(valeur1) + int.parse(valeur2);
    setState(() {
      comp = 9;
    });
    
  }



  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  Widget _textfield(String label, String hint,TextEditingController controller){
    return Container(
      width: screenWidth,
      margin: EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _button(String value,VoidCallback  onPressed) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: SizedBox(
        height: 50,
        width: screenWidth,
        child:ElevatedButton(
        onPressed: onPressed,
        child: Text(
          "$value",
          style: style,
        ),
      ),
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text("donner vos cordonnées"),
          _textfield("username","mot utilisateur", _controller),// a changer avec harder code
          Container(
            width: screenWidth,
            margin: EdgeInsets.all(20),
            child: TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                labelText: "password",
                hintText: "mode de passe",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () => setState(() {
                      isVisible = !isVisible;
                    }) ,
                    icon: Icon(
                      isVisible? Icons.visibility : Icons.visibility_off,
                    ) )
              ),
            ),
          ),
          _button("clicker login",calculerSomme),
          ElevatedButton(
              onPressed: () => _navigateToDetailScreen(context,new Etudiant(1, "amine", "yassine")),
              child: Text("clicker pour passer")
          ),
          Text("la somme est :  ")
            ],
          );
  }


  Future<void> _montrerDialogueConfirmation(BuildContext context) async {
    String username = _controller.text ;
    return showDialog<void>(
      context: context,

      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmation requise'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("tu a entrer $username"),
                const Text('Cette action est irréversible.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Annuler'),
              onPressed: () {
                // Ferme le dialogue
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Confirmer'),
              onPressed: () {
                // Action à effectuer si l'utilisateur confirme
                print('Action confirmée !');
                // Ferme le dialogue
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


}



void _navigateToDetailScreen(BuildContext context, Etudiant etudiantSelectionne) {
  Navigator.push(
    context,
    MaterialPageRoute(

      builder: (context) => DetailEtudiantScreen(),
    ),
  );

}

/*void _navigateToDetailScreen(BuildContext context, Etudiant etudiantSelectionne) {
  Navigator.push(
    context,
    MaterialPageRoute(
      // On passe l'objet Etudiant sélectionné au deuxième écran
      builder: (context) => DetailEtudiantScreen(etudiant: etudiantSelectionne),
    ),
  );
}*/

