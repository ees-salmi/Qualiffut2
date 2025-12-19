
class Etudiant{
   int id;
  late String nom;
  late String prenom;
  Etudiant(this.id,this.nom,this.prenom);

  String afficherCompte(){
    return "id = $id , nom = $nom, prenom = $prenom";
  }

}