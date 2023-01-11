import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Todo Amplify App"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Text('hi'),
              SignOutButton()
            ],
          ),
        ),
      ),
    );
  }
}
