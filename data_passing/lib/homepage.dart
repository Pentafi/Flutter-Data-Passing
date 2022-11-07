import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginHomepage extends StatelessWidget {

  String value;

  LoginHomepage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Data Passing",
        ),
      ),
      body: Center(
        child: Text (
          value,
        ),
      ),
    );
  }
}