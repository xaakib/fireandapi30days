import 'package:fireandapi30days/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final UserList userListss = Get.put(UserList());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Servies"),
      ),
      body: Container(
        height: 500,
        color: Colors.red,
        child: ListView.builder(
            itemCount: userListss.userLists.length,
            itemBuilder: (context, index) {
              return ListTiles();
            }),
      ),
    );
  }
}

class ListTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
