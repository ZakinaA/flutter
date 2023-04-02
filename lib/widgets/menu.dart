import 'package:flutter/material.dart';
import 'package:webstudent/pages/student_list.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
          ),
          ExpansionTile(
            title: Text('Élève'),
            children: <Widget>[
              ListTile(
                title: Text('Liste'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Ajouter'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StudentList()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
