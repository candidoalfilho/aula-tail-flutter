import 'package:aulatail/screens/user_screen.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final name;
  final city;
  final age;

  const UserCard({
    Key? key,
    this.name,
    this.city,
    this.age,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserScreen(
                  name: name,
                )))
      },
      child: Card(
        elevation: 10,
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(city, style: TextStyle(fontSize: 20))
                ],
              ),
              Text(age.toString() + " anos", style: TextStyle(fontSize: 30)),
            ],
          ),
        ),
      ),
    );
  }
}
