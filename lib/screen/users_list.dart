import 'package:flutter/material.dart';
import '../model/user.dart';

class UsersList extends StatelessWidget {
  final List<User> users = [
    User(
      id: 'u1',
      name: 'Syed Abdul Basit',
      email: 'syedspy1444@gmail.com',
      password: '12345',
    ),
    User(
      id: 'u2',
      name: 'Syed Umair',
      email: 'umairsyed282@gmail.com',
      password: '12345',
    ),
    User(
      id: 'u3',
      name: 'Syed Sameer',
      email: 'samrocky555@gmail.com',
      password: '12345',
    ),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users")),
      body: Column(
          children: users.map((ux) {
        return Card(
          child: Expanded(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue[300],
                      width: 2,
                    ),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    ux.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ux.email,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ux.password,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
