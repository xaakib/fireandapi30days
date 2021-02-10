import 'package:fireandapi30days/services/authenticationServices.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  AuthenticationService _authenticationService = AuthenticationService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomeScreen"),
        actions: [
          IconButton(
              icon: Icon(Icons.login_outlined),
              onPressed: () {
                _authenticationService.signOut();
              })
        ],
      ),
    );
  }
}
