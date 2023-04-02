class Maison {
  final int id;
  final String nom;



  Maison({
    required this.id,
    required this.nom,
  });

  factory Maison.fromJson(Map<String, dynamic> json) {
    return Maison(
      id: json['id'],
      nom: json['nom'],
    );
  }
}