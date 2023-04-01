import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:webstudent/models/student.dart';

class Api {
  static const String apiUrl = 'http://localhost/webstudentApi/public/api/etudiant/list';

  static Future<List<Student>> getStudents() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Student.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load students');
    }
  }
}
