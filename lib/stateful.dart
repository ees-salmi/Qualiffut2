import 'package:flutter/material.dart';



class CompteurApp extends StatefulWidget {
  @override
  _CompteurAppState createState() => _CompteurAppState();
}

class _CompteurAppState extends State<CompteurApp> {
  // Variables d'état
  int _compteur = 0;
  String _message = "Appuyez sur les boutons!";
  Color _couleur = Colors.blue;

  // Méthode pour incrémenter
  void _incrementer() {
    setState(() {
      _compteur++;
      _message = "Vous avez incrémenté!";
      _couleur = Colors.green;
    });
  }

  // Méthode pour décrémenter
  void _decrementer() {
    setState(() {
      _compteur--;
      _message = "Vous avez décrémenté!";
      _couleur = Colors.red;
    });
  }

  // Méthode pour réinitialiser
  void _reset() {
    setState(() {
      _compteur = 0;
      _message = "Compteur réinitialisé!";
      _couleur = Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exemple Stateful Widget'),
        backgroundColor: _couleur,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_compteur',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: _couleur,
              ),
            ),
            SizedBox(height: 20),
            Text(
              _message,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decrementer,
                  child: Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _reset,
                  child: Text('Reset'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _incrementer,
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Utilisation dans main.dart
void main() {
  runApp(MaterialApp(
    home: CompteurApp(),
  ));
}