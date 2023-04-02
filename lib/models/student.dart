import 'package:webstudent/models/maison.dart';
import 'dart:convert';

class Student {
  final int id;
  final String prenom;
  final String nom;
  final Maison maison;
  final String dateNaiss;


  Student({
    required this.id,
    required this.prenom,
    required this.nom,
    required this.maison,
    required this.dateNaiss,
  });

  factory Student.fromJson(Map<String, dynamic> json) {
    
    //final jsonString = json['dateNaiss'];
    //print(jsonString.runtimeType);

    int timestamp = json['dateNaiss']['timestamp'];
    //print(timestamp);
    DateTime dateNaiss = DateTime.fromMillisecondsSinceEpoch(timestamp * 1000, isUtc: true);
    String dateNaissFormatted = "${dateNaiss.day.toString().padLeft(2, '0')}/${dateNaiss.month.toString().padLeft(2, '0')}/${dateNaiss.year.toString()}";

    return Student(
      id: json['id'],
      prenom: json['prenom'],
      nom: json['nom'],
      maison: Maison.fromJson(json['maison']),
      //dateNaiss: "2023-12-02",
      dateNaiss: dateNaissFormatted
    );
  }
}