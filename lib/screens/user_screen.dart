import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatefulWidget {
  final name;

  const UserScreen({super.key, this.name});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  var counter = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fit League'),
          centerTitle: true,
          actions: [Icon(Icons.message), Icon(Icons.person)],
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 10,
                child: ListTile(
                  title: Text(
                    widget.name,
                    style: TextStyle(fontSize: 30),
                  ),
                  subtitle: Text('Bem-vindo de volta!'),
                  trailing: Icon(Icons.person),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                counter.toString(),
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    counter = counter + 1;
                    setState(() {});
                  },
                  child: Text('Clique em mim!')),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                './assets/images/tail.jpg',
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Image.network(
                  'https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png')
            ],
          ),
        ));
  }
}
