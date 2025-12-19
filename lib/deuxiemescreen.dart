import 'package:flutter/material.dart';
import '../model/Etudiant.dart';

class DetailEtudiantScreen extends StatelessWidget {

  //final Etudiant etudiant;


 //const DetailEtudiantScreen({Key? key, required this.etudiant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("etudiant"), // Affiche le nom de l'étudiant dans l'AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nom:amine',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Filière: info',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: email',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Retour à la liste'),
            ),
          ],
        ),
      ),
    );
  }
}
