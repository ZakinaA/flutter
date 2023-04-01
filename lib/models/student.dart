class Student {
  final int id;
  final String prenom;
  final String nom;


  Student({
    required this.id,
    required this.prenom,
    required this.nom,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      prenom: json['prenom'],
      nom: json['nom']
    );
  }
}