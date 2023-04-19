import 'package:aulatail/widgets/usercard.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fit League'),
          centerTitle: true,
          actions: [Icon(Icons.message), Icon(Icons.person)],
        ),
        body: Container(
            width: double.infinity,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserCard(
                    age: 17,
                    name: 'Rafael',
                    city: 'Maceió',
                  ),
                  UserCard(
                    age: 19,
                    name: 'João',
                    city: 'Natal',
                  ),
                  UserCard(
                    age: 19,
                    name: 'João',
                    city: 'Natal',
                  ),
                  UserCard(
                    age: 19,
                    name: 'João',
                    city: 'Natal',
                  ),
                  UserCard(
                    age: 19,
                    name: 'João',
                    city: 'Natal',
                  ),
                  UserCard(
                    age: 19,
                    name: 'João',
                    city: 'Natal',
                  ),
                  UserCard(
                    age: 19,
                    name: 'João',
                    city: 'Natal',
                  ),
                ],
              ),
            )));
  }
}
