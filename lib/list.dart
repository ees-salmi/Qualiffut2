import 'package:flutter/material.dart';
import 'package:fluttertest/model/Etudiant.dart'; // Assurez-vous d'importer votre classe

class ListeEtudiantsScreen extends StatelessWidget {
  final List<Etudiant> listeEtudiants = [
    Etudiant(1,"ali","amine"),
    Etudiant(2,"ahmed","yasinne"),
    Etudiant(3,"fatima",  "saad"),
    Etudiant(1,"ali","amine"),

  ];

  ListeEtudiantsScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listeEtudiants.length,
        itemBuilder: (context, index) {
          final etudiant = listeEtudiants[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(etudiant.nom[0]),
            ),
            title: Text(etudiant.nom),
            subtitle: Text(etudiant.prenom),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Vous avez cliqué sur ${etudiant.nom}')),
              );
            },
          );
        },
      );

  }
}
