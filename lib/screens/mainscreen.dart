import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.ac_unit), onPressed: () {}),
        title: Text("Firebase CRud"),
        elevation: 0,
      ),
    );
  }
}
