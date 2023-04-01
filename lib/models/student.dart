

class Student {
  final int id;
  final String prenom;
  final String nom;
  //final DateTime dateNaiss;


  Student({
    required this.id,
    required this.prenom,
    required this.nom,
    //required this.dateNaiss,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      prenom: json['prenom'],
      nom: json['nom'],
      //dateNaiss: DateTime.parse(json['dateNaiss']),
    );
  }
}